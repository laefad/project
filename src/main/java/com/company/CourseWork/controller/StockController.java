package com.company.CourseWork.controller;

import com.company.CourseWork.entity.Stock;
import com.company.CourseWork.entity.User;
import com.company.CourseWork.service.StockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Service
@RequestMapping(path = "stock")
public class StockController extends AuthorizedController {

    @Autowired
    StockService stockService;

    @GetMapping
    public String stock (
            Model model
    ) {
        User user = getCurrentUser();

        model.addAttribute("user", user);
        model.addAttribute("stocks", stockService.getAll());

        return "stock/index";
    }

    @GetMapping(path = "/get")
    public String get (
            @RequestParam long id,
            Model model
    ) {
        User user = getCurrentUser();

        model.addAttribute("user", user);
        model.addAttribute("stock", stockService.getStockById(id));

        return "stock/stock";
    }

    @PostMapping(path = "add")
    public String addStock(
            @RequestParam String name,
            Model model
    ) {
        Stock stock = stockService.addStock(name);

        return "redirect:/stock/get/?id=" + stock.getId();
    }

    @PostMapping(path = "delete")
    public String deleteStock(
            @RequestParam long id,
            Model model
    ) {
        stockService.removeStock(id);

        return "redirect:/stock";
    }

    @PostMapping(path = "change")
    public String changeItem(
            @RequestParam long stock_id,
            @RequestParam long item_id,
            @RequestParam int amount,
            HttpServletRequest request,
            Model model
    ) {
        stockService.changeItemsAmountFromStockById(stock_id, item_id, amount);

        return getPreviousPageByRequest(request)
                .orElse("redirect:/");
    }
}
