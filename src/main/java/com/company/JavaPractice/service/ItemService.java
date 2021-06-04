package com.company.JavaPractice.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/*
@Service
@Slf4j
public class ItemService {

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private ItemRepository itemRepository;

    @Autowired
    private EmailService emailService;

    private List<Item> getSortedBy(String field, Long orderId){
        return itemRepository.findAll(
                ItemSpecification.selectByOrderId(orderId)
                , Sort.by(Sort.Direction.ASC, field)
        );
    }

    @Transactional(readOnly = true)
    public List<Item> getItemsByOrderId(Long orderId) {
        log.info(String.format("get items by order id = %d", orderId));
        emailService.sendMail("ITEMS::getItemsByOrderId", "get items by order id");
        return itemRepository.findAll(
                ItemSpecification.selectByOrderId(orderId)
        );
    }

    @Transactional
    public void removeItemById(Long itemId) {
        log.info(String.format("remove item by item id = %d", itemId));
        emailService.sendMail("ITEMS::removeItemById", "remove item by item id");
        if (itemId != null)
            itemRepository.deleteById(itemId);
    }

    @Transactional
    public void addItem(
            Long orderId,
            Date creationDate,
            String name,
            Double price
    ) {
        log.info(String.format(
                "add item with {\n\torderId: %d,\n\tcreationDate: %tF,\n\tname: %s,\n\tprice: %f\n}",
                orderId, creationDate, name, price
        ));
        emailService.sendMail("ITEMS::addItem", "add item");

        if (creationDate != null
                && name != null
                && price != null
                && orderId != null)

            itemRepository.save(
                    Item.builder()
                            .creationDate(creationDate)
                            .name(name)
                            .price(price)
                            .order(orderRepository.getOne(orderId))
                            .build()
            );
    }

    @Transactional(readOnly = true)
    public List<Item> getSortedById(Long orderId) {
        log.info("get sorted by id");
        emailService.sendMail("ITEMS::getSortedById", "get sorted by id");
        return getSortedBy("id", orderId);
    }

    @Transactional(readOnly = true)
    public List<Item> getSortedByName(Long orderId) {
        log.info("get sorted by name");
        emailService.sendMail("ITEMS::getSortedByName", "get sorted by name");
        return getSortedBy("name", orderId);
    }

    @Transactional(readOnly = true)
    public List<Item> getSortedByPrice(Long orderId) {
        log.info("get sorted by price");
        emailService.sendMail("ITEMS::getSortedByPrice", "get sorted by price");
        return getSortedBy("price", orderId);
    }

    @Transactional(readOnly = true)
    public List<Item> getSortedByDate(Long orderId) {
        log.info("get sorted by date");
        emailService.sendMail("ITEMS::getSortedByDate", "get sorted by date");
        return getSortedBy("creationDate", orderId);
    }

}
*/