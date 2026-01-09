package org.example.pixelhavencat201;

public class Customer {
    private String fullName;
    private String email;
    private String password;

    public Customer(String fullName, String email, String password) {
        this.fullName = fullName;
        this.email = email;
        this.password = password;
    }

    // Getters - These allow the JSP to display the name
    public String getFullName() { return fullName; }
    public String getEmail() { return email; }
    @Override
    public String toString() {
        return this.fullName; // This tells Java to print the name, not the ID
    }
}