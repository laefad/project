package practice4.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import practice4.entity.Item;
import practice4.entity.OrderItem;
import practice4.entity.Stock;
import practice4.repository.OrderItemRepository;

@Service
public class OrderItemService {

    @Autowired
    OrderItemRepository orderItemRepository;

    @Transactional
    public OrderItem createAndSave(Item item, Stock stock) {
        OrderItem orderItem = OrderItem.builder()
                .item(item)
                .stock(stock)
                .build();

        orderItemRepository.save(orderItem);
        return orderItem;
    }

    @Transactional
    public void remove(OrderItem orderItem) {
        orderItemRepository.delete(orderItem);
    }
}
