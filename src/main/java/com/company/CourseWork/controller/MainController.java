package com.company.CourseWork.controller;

import com.company.CourseWork.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
