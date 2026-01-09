package org.example.pixelhavencat201;

import java.util.ArrayList;

public class Cart {
    private ArrayList<CartItem> items = new ArrayList<>();

    public void addItem(CartItem newItem) {
        for(CartItem item : items) {
            if(item.getName().equals(newItem.getName())) {
                item.addQuantity(newItem.getQuantity()); // merge quantity
                return;
            }
        }
        items.add(newItem);
    }

    public void removeItem(int index) {
        if(index >= 0 && index < items.size()) items.remove(index);
    }

    public ArrayList<CartItem> getItems() { return items; }

    public int getTotal() {
        int total = 0;
        for(CartItem item : items) total += item.getTotalPrice();
        return total;
    }

    public void clear() { items.clear(); }

    public boolean isEmpty() { return items.isEmpty(); }
}

