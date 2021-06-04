package com.company.CourseWork.controller;

import com.company.CourseWork.entity.User;
import com.company.CourseWork.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

@Controller
public abstract class AuthorizedController {

    @Autowired
    protected UserService userService;

    protected User getCurrentUser() {
        String login = SecurityContextHolder.getContext().getAuthentication().getName();
        return userService.getUserByLogin(login);
    }

    protected Optional<String> getPreviousPageByRequest(HttpServletRequest request)
    {
        return Optional.ofNullable(request.getHeader("Referer"))
                .map(requestUrl -> "redirect:" + requestUrl);
    }
}
