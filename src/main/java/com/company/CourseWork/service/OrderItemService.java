package com.company.CourseWork.service;

import com.company.CourseWork.entity.Item;
import com.company.CourseWork.entity.OrderItem;
import com.company.CourseWork.entity.Stock;
import com.company.CourseWork.repository.OrderItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
