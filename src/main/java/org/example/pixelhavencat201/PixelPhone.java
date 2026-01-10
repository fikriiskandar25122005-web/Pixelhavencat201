package org.example.pixelhavencat201;

public class PixelPhone {
    private String model;
    private String color;
    private double price;
    private int stock;

    public PixelPhone(String model, String color, double price, int stock) {
        this.model = model;
        this.color = color;
        this.price = price;
        this.stock = stock;
    }

    // Getters and setters
    public String getModel() { return model; }
    public void setModel(String model) { this.model = model; }

    public String getColor() { return color; }
    public void setColor(String color) { this.color = color; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public int getStock() { return stock; }
    public void setStock(int stock) { this.stock = stock; }
}
