package org.example.pixelhavencat201.admin;

public class Admin {
    private String username;
    private String password;

    public Admin(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public boolean validate(String user, String pass) {
        return username.equals(user) && password.equals(pass);
    }
}
