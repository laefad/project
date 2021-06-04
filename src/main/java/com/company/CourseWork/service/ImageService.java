package com.company.CourseWork.service;

import com.company.CourseWork.entity.Item;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Service
public class ImageService {

    @Value("${resources.images.path}")
    private String path;

    public File getFile(String subpath) {
        File file = new File(path + File.separator + subpath);

        if(file.exists())
            return file;

        try {
            file.createNewFile();
            return file;
        } catch (IOException e) {
            System.out.println(e.getMessage());
            return null;
        }

    }

    public String saveImage(MultipartFile file, Item item) {

        if (file == null)
            return null;

        String type = file.getOriginalFilename();
        type = type.substring(type.lastIndexOf("."));

        String finalPath = "/images" + File.separator + item.getId() + type;

        File file1 = getFile(finalPath);

        try {
            file.transferTo(file1);
        } catch (IOException e) {
            System.out.println(e.getMessage());
            return null;
        }

        return finalPath;
    }

    public void deleteImage(Item item) {
        File file = getFile(item.getPathToImage());

        file.delete();
    }

}
