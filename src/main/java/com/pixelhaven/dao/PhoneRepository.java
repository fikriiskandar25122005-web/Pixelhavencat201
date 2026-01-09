package com.pixelhaven.dao;

import com.pixelhaven.model.PixelPhone;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class PhoneRepository {

    // --- METHOD DEFINED HERE (KEEP THIS ONE) ---
    public static PixelPhone getPhoneById(String id) {
        for (PixelPhone phone : getAllPhones()) {
            if (phone.getId().equals(id)) {
                return phone;
            }
        }
        return null;
    }

    public static List<PixelPhone> getAllPhones() {
        List<PixelPhone> phones = new ArrayList<>();

        // ==========================================
        // CATEGORY: PIXEL 10 SERIES
        // ==========================================

        // 1. PIXEL 10 PRO XL
        phones.add(new PixelPhone(
                "P10XL", "Pixel 10 Pro XL", "The ultimate Pixel experience with largest display.",
                6299.00, "pixel10proxl_moonstone.jpg",
                "Pixel 10 Series",
                Arrays.asList("#A8A9AD", "#00A86B", "#F0EFE9", "#121212"),
                Arrays.asList("Moonstone", "Jade", "Porcelain", "Obsidian"), // <--- MISSING NAMES ADDED BACK
                Arrays.asList(
                        "pixel10proxl_moonstone.jpg",
                        "pixel10proxl_jade.jpg",
                        "pixel10proxl_porcelain.jpg",
                        "pixel10proxl_obsidian.jpg"
                ),
                Arrays.asList("256GB", "512GB", "1TB"),
                Arrays.asList(6299.00, 7199.00, 8099.00)
        ));

        // 2. PIXEL 10 PRO
        phones.add(new PixelPhone(
                "P10PRO", "Pixel 10 Pro", "Pro performance in a perfect size.",
                5699.00, "pixel10proxl_moonstone.jpg",
                "Pixel 10 Series",
                Arrays.asList("#A8A9AD", "#00A86B", "#F0EFE9", "#121212"),
                Arrays.asList("Moonstone", "Jade", "Porcelain", "Obsidian"), // <--- MISSING NAMES ADDED BACK
                Arrays.asList(
                        "pixel10proxl_moonstone.jpg",
                        "pixel10proxl_jade.jpg",
                        "pixel10proxl_porcelain.jpg",
                        "pixel10proxl_obsidian.jpg"
                ),
                Arrays.asList("128GB", "256GB", "512GB", "1TB"),
                Arrays.asList(5699.00, 6199.00, 7099.00, 7999.00)
        ));

        // 3. PIXEL 10 (STANDARD)
        phones.add(new PixelPhone(
                "P10STD", "Pixel 10", "Advanced AI with a fresh new design.",
                4499.00, "pixel10_indigo.jpg",
                "Pixel 10 Series",
                Arrays.asList("#4B0082", "#E0FFFF", "#D0F0C0", "#121212"),
                Arrays.asList("Indigo", "Frost", "Lemongrass", "Obsidian"), // <--- MISSING NAMES ADDED BACK
                Arrays.asList("pixel10_indigo.jpg", "pixel10_frost.jpg", "pixel10_lemongrass.jpg", "pixel10_obsidian.jpg"),
                Arrays.asList("128GB", "256GB"),
                Arrays.asList(4499.00, 4999.00)
        ));

        // ==========================================
        // CATEGORY: PIXEL 9 SERIES
        // ==========================================

        // 4. PIXEL 9 PRO XL
        phones.add(new PixelPhone(
                "P9XL", "Pixel 9 Pro XL", "The ultimate Pixel experience with largest display.",
                5699.00, "pixel9proxl_obsidian.jpg",
                "Pixel 9 Series",
                Arrays.asList("#F0EFE9", "#F3CFD5", "#8E9182", "#121212"),
                Arrays.asList("Porcelain", "Rose Quartz", "Hazel", "Obsidian"), // <--- MISSING NAMES ADDED BACK
                Arrays.asList("pixel9proxl_porcelain.jpg", "pixel9proxl_rosequartz.jpg", "pixel9proxl_hazel.jpg", "pixel9proxl_obsidian.jpg"),
                Arrays.asList("128GB", "256GB", "512GB", "1TB"),
                Arrays.asList(5699.00, 6199.00, 7099.00, 7999.00)
        ));

        // 5. PIXEL 9 PRO
        phones.add(new PixelPhone(
                "P9PRO", "Pixel 9 Pro", "Pro performance in a perfect size.",
                5199.00, "pixel9proxl_porcelain.jpg",
                "Pixel 9 Series",
                Arrays.asList("#F0EFE9", "#F3CFD5", "#8E9182", "#121212"),
                Arrays.asList("Porcelain", "Rose Quartz", "Hazel", "Obsidian"), // <--- MISSING NAMES ADDED BACK
                Arrays.asList("pixel9proxl_porcelain.jpg", "pixel9proxl_rosequartz.jpg", "pixel9proxl_hazel.jpg", "pixel9proxl_obsidian.jpg"),
                Arrays.asList("128GB", "256GB", "512GB", "1TB"),
                Arrays.asList(5199.00, 5699.00, 6599.00, 7499.00)
        ));

        // 6. PIXEL 9
        phones.add(new PixelPhone(
                "P9STD", "Pixel 9", "Advanced AI with a fresh new design.",
                3999.00, "pixel9_peony.jpg",
                "Pixel 9 Series",
                Arrays.asList("#E38FAB", "#C6E5D9", "#F0EFE9", "#121212"),
                Arrays.asList("Peony", "Wintergreen", "Porcelain", "Obsidian"), // <--- MISSING NAMES ADDED BACK
                Arrays.asList("pixel9_peony.jpg", "pixel9_wintergreen.jpg", "pixel9_porcelain.jpg", "pixel9_obsidian.jpg"),
                Arrays.asList("128GB", "256GB"),
                Arrays.asList(3999.00, 4499.00)
        ));

        return phones;
    }

    // --- (DELETED THE DUPLICATE METHOD THAT WAS HERE) ---
}