package com.kainattu.microservice.orderservice;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@RestController
@RequestMapping("/order")
public class OrderController {

    static final Logger LOGGER = LoggerFactory.getLogger(OrderController.class);

    @Autowired
    RestTemplate restTemplate;

    @Autowired
    Environment environment;

    @GetMapping
    public String getInstanceDetails() {
        LOGGER.debug(" Enviromnet Details :" + environment);
        return " product service running at port :" + environment.getProperty("local.server.port");
    }

    @GetMapping("/product")
    public List<Product> getAllProduct() {
        LOGGER.debug(" order service method.");
        List<Product> productList = restTemplate.getForObject("http://PRODUCT-SERVICE/product", List.class);
        return productList;
    }
}
