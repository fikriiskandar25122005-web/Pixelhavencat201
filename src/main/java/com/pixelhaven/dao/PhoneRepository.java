package com.pixelhaven.dao;

import com.pixelhaven.model.PixelPhone;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class PhoneRepository {

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

        // 1. PIXEL 10 PRO XL (WITH FULL DETAILED SPECS)
        phones.add(new PixelPhone(
                "P10XL", "Pixel 10 Pro XL", "The ultimate Pixel experience with largest display.",
                6299.00, "pixel10proxl_moonstone.jpg",
                "Pixel 10 Series",
                Arrays.asList("#A8A9AD", "#00A86B", "#F0EFE9", "#121212"),
                Arrays.asList("Moonstone", "Jade", "Porcelain", "Obsidian"),
                Arrays.asList("pixel10proxl_moonstone.jpg", "pixel10proxl_jade.jpg", "pixel10proxl_porcelain.jpg", "pixel10proxl_obsidian.jpg"),
                Arrays.asList("256GB", "512GB", "1TB"),
                Arrays.asList(6299.00, 7199.00, 8099.00),
                // DISPLAY
                "<ul><li>6.3-inch (161 mm) Super Actua display</li><li>20:9 aspect ratio</li><li>1280 x 2856 LTPO OLED at 495 PPI</li><li>Smooth Display (1–120 Hz)</li><li>Corning® Gorilla® Glass Victus® 2</li><li>Up to 3,300 nits peak brightness</li></ul>",
                // DIMENSIONS
                "<ul><li>162.8 mm (height) x 76.6 mm (width) x 8.5 mm (depth)</li><li>232 g</li></ul>",
                // BATTERY
                "<ul><li>24+ hour battery life</li><li>Typical 4870 mAh</li><li>Fast charging – up to 55% in 30 mins</li><li>Pixelsnap wireless charging (Qi2)</li></ul>",
                // REAR CAMERA
                "<ul><li><strong>Main:</strong> 50 MP Octa PD wide camera (ƒ/1.68)</li><li><strong>Ultrawide:</strong> 48 MP Quad PD (ƒ/1.7)</li><li><strong>Telephoto:</strong> 48 MP 5x optical zoom (ƒ/2.8)</li><li>Pro Res Zoom up to 100x</li></ul>",
                // FRONT CAMERA
                "<ul><li>42 MP Dual PD selfie camera with autofocus</li><li>ƒ/2.2 aperture</li><li>103° ultrawide field of view</li></ul>"
        ));

        // 2. PIXEL 10 PRO (Placeholder Specs for brevity)
        phones.add(new PixelPhone(
                "P10PRO", "Pixel 10 Pro", "Pro performance in a perfect size.",
                5699.00, "pixel10proxl_moonstone.jpg",
                "Pixel 10 Series",
                Arrays.asList("#A8A9AD", "#00A86B", "#F0EFE9", "#121212"),
                Arrays.asList("Moonstone", "Jade", "Porcelain", "Obsidian"),
                Arrays.asList("pixel10proxl_moonstone.jpg", "pixel10proxl_jade.jpg", "pixel10proxl_porcelain.jpg", "pixel10proxl_obsidian.jpg"),
                Arrays.asList("128GB", "256GB", "512GB", "1TB"),
                Arrays.asList(5699.00, 6199.00, 7099.00, 7999.00),
                "<ul><li>6.3-inch Super Actua display</li><li>LTPO OLED (1-120Hz)</li></ul>",
                "<ul><li>152.8 mm x 72 mm x 8.6 mm</li><li>199 g</li></ul>",
                "<ul><li>4700 mAh Typical</li><li>24+ hour battery</li></ul>",
                "<ul><li>50 MP Wide</li><li>48 MP Ultrawide</li><li>48 MP Telephoto (5x)</li></ul>",
                "<ul><li>42 MP Selfie Camera</li></ul>"
        ));

        // 3. PIXEL 10 (STANDARD)
        phones.add(new PixelPhone(
                "P10STD", "Pixel 10", "Advanced AI with a fresh new design.",
                4499.00, "pixel10_indigo.jpg",
                "Pixel 10 Series",
                Arrays.asList("#4B0082", "#E0FFFF", "#D0F0C0", "#121212"),
                Arrays.asList("Indigo", "Frost", "Lemongrass", "Obsidian"),
                Arrays.asList("pixel10_indigo.jpg", "pixel10_frost.jpg", "pixel10_lemongrass.jpg", "pixel10_obsidian.jpg"),
                Arrays.asList("128GB", "256GB"),
                Arrays.asList(4499.00, 4999.00),
                "<ul><li>6.1-inch Actua display</li><li>OLED (60-120Hz)</li></ul>",
                "<ul><li>150 mm x 70 mm x 8.5 mm</li><li>180 g</li></ul>",
                "<ul><li>4500 mAh Typical</li><li>24+ hour battery</li></ul>",
                "<ul><li>50 MP Wide</li><li>12 MP Ultrawide</li></ul>",
                "<ul><li>10.5 MP Selfie Camera</li></ul>"
        ));

        // ==========================================
        // CATEGORY: PIXEL 9 SERIES (Basic Placeholders)
        // ==========================================

        // 4. PIXEL 9 PRO XL
        phones.add(new PixelPhone(
                "P9XL", "Pixel 9 Pro XL", "The ultimate Pixel experience.",
                5699.00, "pixel9proxl_obsidian.jpg",
                "Pixel 9 Series",
                Arrays.asList("#F0EFE9", "#F3CFD5", "#8E9182", "#121212"),
                Arrays.asList("Porcelain", "Rose Quartz", "Hazel", "Obsidian"),
                Arrays.asList("pixel9proxl_porcelain.jpg", "pixel9proxl_rosequartz.jpg", "pixel9proxl_hazel.jpg", "pixel9proxl_obsidian.jpg"),
                Arrays.asList("128GB", "256GB", "512GB", "1TB"),
                Arrays.asList(5699.00, 6199.00, 7099.00, 7999.00),
                "<ul><li>6.8-inch Super Actua</li></ul>", "<ul><li>221 g</li></ul>", "<ul><li>5060 mAh</li></ul>", "<ul><li>50MP Main</li><li>48MP Telephoto</li></ul>", "<ul><li>42MP Front</li></ul>"
        ));

        // 5. PIXEL 9 PRO
        phones.add(new PixelPhone(
                "P9PRO", "Pixel 9 Pro", "Pro performance.",
                5199.00, "pixel9proxl_porcelain.jpg",
                "Pixel 9 Series",
                Arrays.asList("#F0EFE9", "#F3CFD5", "#8E9182", "#121212"),
                Arrays.asList("Porcelain", "Rose Quartz", "Hazel", "Obsidian"),
                Arrays.asList("pixel9proxl_porcelain.jpg", "pixel9proxl_rosequartz.jpg", "pixel9proxl_hazel.jpg", "pixel9proxl_obsidian.jpg"),
                Arrays.asList("128GB", "256GB", "512GB", "1TB"),
                Arrays.asList(5199.00, 5699.00, 6599.00, 7499.00),
                "<ul><li>6.3-inch Super Actua</li></ul>", "<ul><li>199 g</li></ul>", "<ul><li>4700 mAh</li></ul>", "<ul><li>50MP Main</li><li>48MP Telephoto</li></ul>", "<ul><li>42MP Front</li></ul>"
        ));

        // 6. PIXEL 9
        phones.add(new PixelPhone(
                "P9STD", "Pixel 9", "Advanced AI.",
                3999.00, "pixel9_peony.jpg",
                "Pixel 9 Series",
                Arrays.asList("#E38FAB", "#C6E5D9", "#F0EFE9", "#121212"),
                Arrays.asList("Peony", "Wintergreen", "Porcelain", "Obsidian"),
                Arrays.asList("pixel9_peony.jpg", "pixel9_wintergreen.jpg", "pixel9_porcelain.jpg", "pixel9_obsidian.jpg"),
                Arrays.asList("128GB", "256GB"),
                Arrays.asList(3999.00, 4499.00),
                "<ul><li>6.3-inch Actua</li></ul>", "<ul><li>198 g</li></ul>", "<ul><li>4700 mAh</li></ul>", "<ul><li>50MP Main</li><li>48MP Ultrawide</li></ul>", "<ul><li>10.5MP Front</li></ul>"
        ));

        return phones;
    }
}