package practice4.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import practice4.entity.Item;
import practice4.repository.ItemRepository;

@Service
public class ItemService {

    @Autowired
    ItemRepository itemRepository;

    @Autowired
    ImageService imageService;

    @Transactional(readOnly = true)
    public List<Item> getAll() {
        return itemRepository.findAll();
    }

    @Transactional(readOnly = true)
    public Item getItemById(long id) {
        Optional<Item> item = itemRepository.findById(id);
        return item.orElse(null);
    }

    @Transactional
    public void createItem(String name, double price, String description, MultipartFile file) {
        Item item = Item.builder()
                .name(name)
                .price(price)
                .description(description)
                .pathToImage(null)
                .build();

        itemRepository.save(item);

        String path = imageService.saveImage(file, item);
        item.setPathToImage(path);
    }

    @Transactional
    public void removeItem(long id) {
        Item item = getItemById(id);

        if (item != null) {
            imageService.deleteImage(item);
            itemRepository.deleteById(id);
        }
    }

}
