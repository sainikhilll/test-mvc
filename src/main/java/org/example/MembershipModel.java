package org.example;

public class MembershipModel {
    private String membership_Id;
    private String membership_type;
    private String duration;
    private String hours_per_day;
    private String price;

    public String getMembership_Id() {
        return membership_Id;
    }
    public void setMembership_Id(String membership_Id) {
        this.membership_Id = membership_Id;
    }
    public String getMembership_type() {
        return membership_type;
    }
    public void setMembership_type(String membership_type) {
        this.membership_type = membership_type;
    }
    public String getDuration() {
        return duration;
    }
    public void setDuration(String duration) {
        this.duration = duration;
    }
    public String getHours_per_day() {
        return hours_per_day;
    }
    public void setHours_per_day(String hours_per_day) {
        this.hours_per_day = hours_per_day;
    }
    public String getPrice() {
        return price;
    }
    public void setPrice(String price) {
        this.price = price;
    }

}
