package practice4.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GrayLogController {
    @GetMapping(value = "/export/logs")
    public void get(
        HttpServletResponse httpServletResponse
    ) {
        String redirectUrl = "http://localhost:9000/api/search/universal/relative/export?query=*&range=1000&fields=message";
        httpServletResponse.setHeader("Location", redirectUrl);
        httpServletResponse.setStatus(302);
    }
}
