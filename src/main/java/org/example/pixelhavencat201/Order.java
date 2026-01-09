package org.example.pixelhavencat201;

import java.io.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Order {
    private List<CartItem> items;
    private Date timestamp;

    public Order(List<CartItem> cartItems) {
        items = new ArrayList<>();
        for(CartItem ci : cartItems) {
            items.add(new CartItem(ci.getName(), ci.getPrice(), ci.getQuantity()));
        }
        timestamp = new Date();
    }

    public void save() {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter("orders.txt", true))) {
            writer.write("Order at: " + timestamp + "\n");
            for(CartItem item : items) {
                writer.write(item.getName() + " x" + item.getQuantity() + " = RM" + item.getTotalPrice() + "\n");
            }
            writer.write("-----\n");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
