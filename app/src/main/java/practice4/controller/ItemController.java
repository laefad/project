package practice4.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import practice4.entity.Item;
import practice4.entity.User;
import practice4.service.ItemService;
import practice4.service.StockService;

@Controller
@RequestMapping(path = "/item")
public class ItemController extends AuthorizedController{

    @Autowired
    ItemService itemService;

    @Autowired
    StockService stockService;

    @GetMapping
    public String items(
            Model model
    ) {
        User user = this.getCurrentUser();

        model.addAttribute("items", itemService.getAll());
        model.addAttribute("user", user);

        return "item/index";
    }

    @GetMapping(path = "/get")
    public String getItem(
            @RequestParam long id,
            HttpServletRequest request,
            Model model
    ) {
        User user = this.getCurrentUser();

        Item item = itemService.getItemById(id);

        if (item == null)
            return getPreviousPageByRequest(request)
                    .orElse("redirect:/");

        model.addAttribute("item", item);
        model.addAttribute("user", user);

        if (user != null && user.getRole().equals("ADMIN"))
            model.addAttribute("stocks", stockService.getAll());

        return "item/item";
    }

    @PostMapping(path = "create")
    public String create(
            @RequestParam String name,
            @RequestParam double price,
            @RequestParam String description,
            @RequestParam("image") MultipartFile image,
            Model model
    ) {
        itemService.createItem(name, price, description, image);

        return "redirect:/item";
    }

    @PostMapping(path = "delete")
    public String delete(
            @RequestParam long id,
            Model model
    ) {
        itemService.removeItem(id);

        return "redirect:/item";
    }

}
