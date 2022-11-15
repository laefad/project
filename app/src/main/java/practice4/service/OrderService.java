package practice4.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import practice4.entity.Item;
import practice4.entity.Order;
import practice4.entity.OrderItem;
import practice4.entity.Stock;
import practice4.entity.User;
import practice4.repository.OrderRepository;

@Service
public class OrderService {

    @Autowired
    OrderRepository orderRepository;

    @Autowired
    OrderItemService orderItemService;

    @Autowired
    UserService userService;

    @Autowired
    ItemService itemService;

    @Autowired
    StockService stockService;

    @Transactional(readOnly = true)
    public List<Order> getOrderWithStatus(User user, String status) {
        if (user.getRole().equals("ADMIN")) {
            return orderRepository.findAll(
                    (root, query, criteriaBuilder) ->
                            criteriaBuilder.equal(root.get("orderStatus"), status)
            );
        }

        return new ArrayList<>();
    }

    @Transactional(readOnly = true)
    public Order getOrderById(long id) {
        Optional<Order> order = orderRepository.findById(id);
        return order.orElse(null);
    }

    @Transactional
    public Order createOrderToUser(User user, String orderName) {
        Order order = Order.builder()
                .orderStatus("EMPTY")
                .orderName(orderName)
                .build();

        user.getOrders().add(order);
        orderRepository.save(order);
        return order;
    }

    @Transactional
    public void changeOrderStatusById(User user, long order_id, String status) {
        Order order = getOrderById(order_id);

        if (!userService.userHasOrderById(user, order_id) &&
                !user.getRole().equals("ADMIN"))
            return;

        // Избегаем отправления пустых заказов
        // и установки пустым заказам иного статуса.
        if (order.getOrderStatus().equals("READY"))
            return;

        if (order.getItems().isEmpty())
            order.setOrderStatus("EMPTY");

        order.setOrderStatus(status);
    }

    @Transactional
    public void renameOrderById(User user, long order_id, String orderName) {
        Order order = getOrderById(order_id);

        if (order == null)
            return;

        order.setOrderName(orderName);
    }

    @Transactional
    public void removeOrderById(long id, User user) {
        Order order = getOrderById(id);

        if (order != null)
            if (userService.userHasOrderById(user, id)) {
                order.getItems().forEach(
                        (orderItem, amount) -> {
                            orderItemService.remove(orderItem);
                        }
                );
                orderRepository.delete(order);
            }
    }

    @Transactional
    public void changeItemsAmount(User user, long order_id, long item_id, long stock_id, int amount) {

        if (!userService.userHasOrderById(user, order_id))
            return;

        Order order = getOrderById(order_id);

        if (order == null)
            return;

        if (order.getOrderStatus().equals("PROCESSING")||
                order.getOrderStatus().equals("READY"))
            return;

        Stock stock = stockService.getStockById(stock_id);

        if (stock == null)
            return;

        OrderItem orderItem = order.getItems().keySet().stream().filter(
                (i) -> i.getItem().getId() == item_id
                        && i.getStock().getId() == stock_id
        ).findFirst().orElse(null);

        if (orderItem == null) {

            Item item = itemService.getItemById(item_id);

            if (item == null)
                return;

            if (amount < 0)
                return;

            int amountFromStock = stockService.getItemsByAmount(stock_id, item_id, amount);

            if (amountFromStock <= 0)
                return;

            orderItem = orderItemService.createAndSave(item, stock);

            order.getItems().put(orderItem, amountFromStock);
        } else {

            if (amount < 0) {

                int orderAmount = order.getItems().get(orderItem);
                int amountChange = Math.min(orderAmount, -amount);

                if (amountChange == orderAmount)
                    orderItemService.remove(orderItem);
                else
                    order.getItems().put(orderItem, orderAmount - amountChange);

                stockService.changeItemsAmountFromStockById(stock_id, item_id, amountChange);

            } else {

                int amountFromStock = stockService.getItemsByAmount(stock_id, item_id, amount);

                if (amountFromStock <= 0)
                    return;

                int oldAmount = order.getItems().get(orderItem);

                order.getItems().put(orderItem, oldAmount + amountFromStock);

            }

        }

        if (order.getOrderStatus().equals("EMPTY") && !order.getItems().isEmpty())
            order.setOrderStatus("ORDERING");

        if (order.getOrderStatus().equals("ORDERING") && order.getItems().isEmpty())
            order.setOrderStatus("EMPTY");
    }

}
