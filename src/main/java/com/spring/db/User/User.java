package com.spring.db.User;

public class User {
    private String username;
    private String password;
    private String role;
    private boolean enabled;

    private int markerAmount;

    User(){}

    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }

    public boolean isEnabled() { return enabled; }
    public void setEnabled(boolean enabled) { this.enabled = enabled; }

    public int getMarkerAmount() { return markerAmount; }
    public void setMarkerAmount(int markerAmount) { this.markerAmount = markerAmount; }
}
