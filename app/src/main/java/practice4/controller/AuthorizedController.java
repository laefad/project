package practice4.controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

import practice4.entity.User;
import practice4.service.UserService;

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
