package com.pixelhaven.model;

import java.util.List;

public class PixelPhone {
    private String id;
    private String name;
    private String description;
    private double defaultPrice;
    private String defaultImageUrl;
    private String series;

    // Basic Options
    private List<String> colors;
    private List<String> colorNames;
    private List<String> colorImages;
    private List<String> storage;
    private List<Double> storagePrices;

    // NEW: Detailed Specs (HTML String format)
    private String displaySpecs;
    private String dimensionsSpecs;
    private String batterySpecs;
    private String rearCameraSpecs;
    private String frontCameraSpecs;

    public PixelPhone(String id, String name, String description, double defaultPrice, String defaultImageUrl,
                      String series,
                      List<String> colors, List<String> colorNames, List<String> colorImages,
                      List<String> storage, List<Double> storagePrices,
                      // New Parameters
                      String displaySpecs, String dimensionsSpecs, String batterySpecs, String rearCameraSpecs, String frontCameraSpecs) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.defaultPrice = defaultPrice;
        this.defaultImageUrl = defaultImageUrl;
        this.series = series;
        this.colors = colors;
        this.colorNames = colorNames;
        this.colorImages = colorImages;
        this.storage = storage;
        this.storagePrices = storagePrices;

        // Assign new fields
        this.displaySpecs = displaySpecs;
        this.dimensionsSpecs = dimensionsSpecs;
        this.batterySpecs = batterySpecs;
        this.rearCameraSpecs = rearCameraSpecs;
        this.frontCameraSpecs = frontCameraSpecs;
    }

    // Getters
    public String getId() { return id; }
    public String getName() { return name; }
    public String getDescription() { return description; }
    public double getDefaultPrice() { return defaultPrice; }
    public String getDefaultImageUrl() { return defaultImageUrl; }
    public String getSeries() { return series; }
    public List<String> getColors() { return colors; }
    public List<String> getColorNames() { return colorNames; }
    public List<String> getColorImages() { return colorImages; }
    public List<String> getStorage() { return storage; }
    public List<Double> getStoragePrices() { return storagePrices; }

    // New Getters
    public String getDisplaySpecs() { return displaySpecs; }
    public String getDimensionsSpecs() { return dimensionsSpecs; }
    public String getBatterySpecs() { return batterySpecs; }
    public String getRearCameraSpecs() { return rearCameraSpecs; }
    public String getFrontCameraSpecs() { return frontCameraSpecs; }
}