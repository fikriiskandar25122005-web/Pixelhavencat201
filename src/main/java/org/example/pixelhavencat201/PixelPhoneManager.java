package org.example.pixelhavencat201;

import java.util.ArrayList;
import java.util.List;

public class PixelPhoneManager {
    private final static List<PixelPhone> phones = new ArrayList<>();

    public static void addPhone(PixelPhone phone) {
        phones.add(phone);
    }

    public static List<PixelPhone> getPhones() {
        return phones;
    }
}
