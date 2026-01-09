package com.pixelhaven.model;

import java.util.List;

public class PixelPhone {
    private String id;
    private String name;
    private String description;
    private double defaultPrice;
    private String defaultImageUrl;
    private String series;

    private List<String> colors;      // Hex codes (e.g., #000000)
    private List<String> colorNames;  // NEW: Names (e.g., "Obsidian")
    private List<String> colorImages; // Image files
    private List<String> storage;
    private List<Double> storagePrices;

    // UPDATED CONSTRUCTOR: Now accepts 'colorNames'
    public PixelPhone(String id, String name, String description, double defaultPrice, String defaultImageUrl,
                      String series,
                      List<String> colors,
                      List<String> colorNames, // <--- This was missing!
                      List<String> colorImages,
                      List<String> storage, List<Double> storagePrices) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.defaultPrice = defaultPrice;
        this.defaultImageUrl = defaultImageUrl;
        this.series = series;
        this.colors = colors;
        this.colorNames = colorNames; // <--- Store the names
        this.colorImages = colorImages;
        this.storage = storage;
        this.storagePrices = storagePrices;
    }

    // Getters
    public String getId() { return id; }
    public String getName() { return name; }
    public String getDescription() { return description; }
    public double getDefaultPrice() { return defaultPrice; }
    public String getDefaultImageUrl() { return defaultImageUrl; }
    public String getSeries() { return series; }
    public List<String> getColors() { return colors; }
    public List<String> getColorNames() { return colorNames; } // <--- New Getter
    public List<String> getColorImages() { return colorImages; }
    public List<String> getStorage() { return storage; }
    public List<Double> getStoragePrices() { return storagePrices; }
}