package org.example;

public class EnrollmentsModel {

    private String enrollment_Id;
    private String customer_Id;
    private String membership_Id;
    private String date;
    private String status;

    public String getEnrollment_Id() {
        return enrollment_Id;
    }
    public void setEnrollment_Id(String enrollment_Id) {
        this.enrollment_Id = enrollment_Id;
    }
    public String getCustomer_Id() {
        return customer_Id;
    }
    public void setCustomer_Id(String customer_Id) {
        this.customer_Id = customer_Id;
    }
    public String getMembership_Id() {
        return membership_Id;
    }
    public void setMembership_Id(String membership_Id) {
        this.membership_Id = membership_Id;
    }
    public String getDate() {
        return date;
    }
    public void setDate(String date) {
        this.date = date;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }

}
