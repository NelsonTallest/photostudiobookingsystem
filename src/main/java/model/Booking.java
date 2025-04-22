package model;

public class Booking {
    private String fullName;
    private String eventDate;
    private String eventType;
    private String duration;

    // Constructor
    public Booking(String fullName, String eventDate, String eventType, String duration) {
        this.fullName = fullName;
        this.eventDate = eventDate;
        this.eventType = eventType;
        this.duration = duration;
    }

    // Getters and Setters
    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEventDate() {
        return eventDate;
    }

    public void setEventDate(String eventDate) {
        this.eventDate = eventDate;
    }

    public String getEventType() {
        return eventType;
    }

    public void setEventType(String eventType) {
        this.eventType = eventType;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }
}

