package practice4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import practice4.entity.User;

@Controller
public class MainController extends AuthorizedController{

    @GetMapping(path = "/")
    public String index(
            Model model
    ) {
        User user = this.getCurrentUser();

        model.addAttribute("user", user);
        return "index";
    }
}
