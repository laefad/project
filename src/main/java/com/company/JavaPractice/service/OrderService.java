package com.company.JavaPractice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import lombok.extern.slf4j.Slf4j;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/*
@Service
@Slf4j
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private EmailService emailService;

    @Transactional(readOnly = true)
    public List<Order> getAll(){
        log.info("get all orders");
        emailService.sendMail("ORDERS::getAll", "get all orders");
        return orderRepository.findAll();
    }

    @Transactional
    public void addOrder(Date orderDate) {
        log.info(String.format("Add order, orderDate = %tF", orderDate));
        emailService.sendMail("ORDERS::addOrder", "Add order");
        if (orderDate != null)
            orderRepository.save(
                    Order.builder()
                    .orderDate(orderDate)
                    .build()
            );
    }

    @Transactional
    public void removeOrderById(Long orderId) {
        log.info(String.format("Remove order, id = %d", orderId));
        emailService.sendMail("ORDERS::removeOrderById", "Remove order");
        if (orderId != null)
            orderRepository.deleteById(orderId);
    }

    @Transactional(readOnly = true)
    private List<Order> getSortedBy(String field){
        return orderRepository.findAll(
                Sort.by(Sort.Direction.ASC, field)
        );
    }

    @Transactional(readOnly = true)
    public List<Order> getSortedByDate() {
        log.info("get sorted by date");
        emailService.sendMail("ORDERS::getSortedByDate", "get sorted by date");
        return getSortedBy("orderDate");
    }

    @Transactional(readOnly = true)
    public List<Order> getSortedById() {
        log.info("get sorted by id");
        emailService.sendMail("ORDERS::getSortedById", "get sorted by id");
        return getSortedBy("id");
    }
}
*/