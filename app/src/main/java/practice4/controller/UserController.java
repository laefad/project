package practice4.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import practice4.entity.User;
import practice4.service.OrderService;

@Controller
@RequestMapping(path = "/user")
public class UserController extends AuthorizedController {

    @Autowired
    OrderService orderService;

    @GetMapping
    public String user (
            Model model
    ) {
        User user = getCurrentUser();
        model.addAttribute("user", user);

        //privelege error here
        //inner admin check
        model.addAttribute("orders",
                orderService.getOrderWithStatus(user,"PROCESSING"));

        return "user/index";
    }
}
