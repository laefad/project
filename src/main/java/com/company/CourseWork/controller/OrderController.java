package com.company.CourseWork.controller;

import com.company.CourseWork.entity.Order;
import com.company.CourseWork.entity.User;
import com.company.CourseWork.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(path = "order")
public class OrderController extends AuthorizedController {

    @Autowired
    OrderService orderService;

    @GetMapping
    public String get(
            @RequestParam long id,
            Model model
    ) {
        User user = this.getCurrentUser();

        model.addAttribute("user", user);

        if (userService.userHasOrderById(user, id) ||
                user.getRole().equals("ADMIN"))
            model.addAttribute("order", orderService.getOrderById(id));
        //else redirect cant access

        return "user/order";
    }

    @PostMapping(path = "/send")
    public String send(
            @RequestParam long id,
            HttpServletRequest request,
            Model model
    ) {
        User user = this.getCurrentUser();

        orderService.changeOrderStatusById(user, id, "PROCESSING");

        return getPreviousPageByRequest(request)
                .orElse("redirect:/order/?id=" + id);
    }

    @PostMapping(path = "/takeBack")
    public String takeBack(
            @RequestParam long id,
            HttpServletRequest request,
            Model model
    ) {
        User user = this.getCurrentUser();

        orderService.changeOrderStatusById(user, id, "ORDERING");

        return getPreviousPageByRequest(request)
                .orElse("redirect:/order/?id=" + id);
    }

    @PostMapping(path = "/accept")
    public String accept(
            @RequestParam long id,
            HttpServletRequest request,
            Model model
    ) {
        User user = this.getCurrentUser();

        orderService.changeOrderStatusById(user, id, "READY");

        return getPreviousPageByRequest(request)
                .orElse("redirect:/order/?id=" + id);
    }

    @PostMapping(path = "/rename")
    public String rename(
            @RequestParam long id,
            @RequestParam String orderName,
            HttpServletRequest request,
            Model model
    ) {
        User user = this.getCurrentUser();

        orderService.renameOrderById(user, id, orderName);

        return getPreviousPageByRequest(request)
                .orElse("redirect:/order/?id=" + id);
    }

    @PostMapping(path = "/create")
    public String addOrder(
            @RequestParam String orderName,
            Model model
    ) {
        User user = this.getCurrentUser();

        Order order = orderService.createOrderToUser(user, orderName);

        return "redirect:/order/?id=" + order.getId();
    }

    @PostMapping(path = "/delete")
    public String deleteOrder(
            @RequestParam long id,
            Model model
    ) {
        User user = this.getCurrentUser();

        orderService.removeOrderById(id, user);

        return "redirect:/user/";
    }

    @PostMapping(path = "/change")
    public String changeOrderItem(
            @RequestParam long order_id,
            @RequestParam long item_id,
            @RequestParam int amount,
            @RequestParam long stock_id,
            HttpServletRequest request,
            Model model
    ) {
        User user = this.getCurrentUser();

        orderService.changeItemsAmount(user, order_id, item_id, stock_id, amount);

        return getPreviousPageByRequest(request)
                .orElse("redirect:/order/?id=" + order_id);
    }

}
