package com.company.CourseWork.controller;


import com.company.CourseWork.Exceptions.UserAlreadyExistException;
import com.company.CourseWork.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AccessController {

    @Autowired
    UserService userService;

    @GetMapping(path = "/login")
    public String login(
            @RequestParam(required = false) String error,
            Model model
    ) {
        if (error != null)
            model.addAttribute("error", error);

        return "auth/login";
    }

    @PostMapping(path = "/fail")
    public String fail(
            Model model
    ) {
        return "redirect:/login/?error=User doesnt exist";
    }

    @GetMapping(path = "/registration")
    public String registration(
            @RequestParam(required = false) String error,
            Model model
    ) {
        if (error != null)
            model.addAttribute("error", error);

        return "auth/registration";
    }

    @PostMapping(path = "/addUser")
    public String addUser(
            @RequestParam String login,
            @RequestParam String mail,
            @RequestParam String password,
            Model model
    ) {
        try {
            userService.addUser(login, password, mail);
        } catch (UserAlreadyExistException e) {
            return "redirect:/registration/?error=" + e.getMessage();
        }

        return "redirect:/";
    }

}
