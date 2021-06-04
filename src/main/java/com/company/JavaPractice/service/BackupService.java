package com.company.JavaPractice.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

/*
@Service
@Slf4j
public class BackupService {

    @Autowired
    private OrderService orderService;

    @Autowired
    private ItemService itemService;

    @Async
    private void saveOrders(List<Order> orders) throws IOException {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter("backup/orders.txt"))) {
            writer.write(
                    "id" + "\t" + "date" + "\n"
            );
            orders.forEach(
                    (order) -> {
                        try {
                            writer.write(
                                    order.getId()
                                    + "\t"
                                    + order.getOrderDate().toString()
                                    + "\n"
                            );
                        } catch (IOException e) {
                            log.warn("[saveOrders]" + e.getMessage());
                        }
                    }
            );
        }
    }

    @Async
    private void saveItemsFromOrder(List<Item> items, Long orderId) throws IOException {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter("backup/items" + orderId + ".txt"))) {
            writer.write(
                    "id\tname\tdate\tprice\n"
            );
            items.forEach(
                    (item) -> {
                        try {
                            writer.write(
                                    item.getId()
                                    + "\t"
                                    + item.getName()
                                    + "\t"
                                    + item.getCreationDate()
                                    + "\t"
                                    + item.getPrice()
                                    + "\n"
                            );
                        } catch (IOException e) {
                            log.warn("[saveItemsFromOrder]" + e.getMessage());
                        }
                    }
            );
        }
    }

    @Scheduled(cron = "0 0/30 * * * *")
    @Async
    public void doScheduledTask() throws IOException {

        File directory = new File("backup");
        if (!directory.exists())
            directory.mkdir();

        saveOrders(orderService.getAll());
        orderService.getAll().parallelStream().forEach(
                order -> {
                    try {
                        saveItemsFromOrder(
                                itemService.getItemsByOrderId(order.getId()),
                                order.getId()
                        );
                    } catch (IOException e) {
                        log.warn("[doScheduledTask]" + e.getMessage());
                    }
                }
        );

        log.info("Files overwritten");
    }
}
*/