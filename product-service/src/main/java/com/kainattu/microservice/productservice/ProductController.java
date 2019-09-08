package com.kainattu.microservice.productservice;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/product")
public class ProductController {

    private static  final Logger LOGGER= LoggerFactory.getLogger(ProductController.class);
    @GetMapping
    public List<Product> getAllProduct() {

        LOGGER.debug(" product service method.");
        List<Product> productList = Arrays.asList(new Product(1l, "PC", 25000d), new Product(2l, "Laptop", 30000d));
        return productList;
    }
}
