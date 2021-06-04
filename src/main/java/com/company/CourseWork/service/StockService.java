package com.company.CourseWork.service;

import com.company.CourseWork.entity.Item;
import com.company.CourseWork.entity.Stock;
import com.company.CourseWork.repository.StockRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class StockService {

    @Autowired
    StockRepository stockRepository;

    @Autowired
    ItemService itemService;

    @Transactional(readOnly = true)
    public List<Stock> getAll() {
        return stockRepository.findAll();
    }

    @Transactional(readOnly = true)
    public Stock getStockById(long id) {
        return stockRepository.findById(id).orElse(null);
    }

    @Transactional
    public Stock addStock(String name) {
        Stock stock = Stock.builder()
                .name(name)
                .build();
        stockRepository.save(stock);
        return stock;
    }

    @Transactional
    public void removeStock(long id) {
        if (getStockById(id) != null)
            stockRepository.deleteById(id);
    }

    @Transactional
    public int getItemsByAmount(long stock_id, long item_id, int amount) {
        Stock stock = getStockById(stock_id);

        if (stock == null)
            return 0;

        Item item = stock.getItems().keySet().stream().filter(
                (i) -> i.getId() == item_id
        ).findFirst().orElse(null);

        if (item == null)
            return 0;

        int maxAmount = stock.getItems().get(item);

        changeItemsAmountFromStockById(stock_id, item_id, -amount);

        return Math.min(amount, maxAmount);
    }

    @Transactional
    public void changeItemsAmountFromStockById(long stock_id, long item_id, int amount) {
        Stock stock = getStockById(stock_id);

        if (stock == null)
            return;

        Item item = stock.getItems().keySet().stream().filter(
                (i) -> i.getId() == item_id
        ).findFirst().orElse(null);

        if (item != null) {
            int oldAmount = stock.getItems().get(item);
            int newAmount = oldAmount + amount;
            if (newAmount < 1)
                stock.getItems().remove(item);
            else
                stock.getItems().put(item, newAmount);
        } else if (amount > 0){

            item = itemService.getItemById(item_id);

            if (item == null)
                return;

            stock.getItems().put(item, amount);
        }
    }
}
