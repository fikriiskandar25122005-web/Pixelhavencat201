package org.example.pixelhavencat201;

public class CartItem {
    private String name;
    private int price;
    private int quantity;

    public CartItem(String name, int price) {
        this.name = name;
        this.price = price;
        this.quantity = 1;
    }

    public CartItem(String name, int price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public String getName() { return name; }
    public int getPrice() { return price; }
    public int getQuantity() { return quantity; }

    public void setQuantity(int quantity) { this.quantity = quantity; }
    public void addQuantity(int q) { this.quantity += q; }
    public int getTotalPrice() { return price * quantity; }
}



