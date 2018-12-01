/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import java.io.Serializable;


public class User implements Serializable{
    private int userID;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String address;
    private String city;
    private String state;
    private String zip;
    private String creditCardType;
    private String creditCardNumber;
    private String creditCardMonth;
    private String creditCardYear;
    
    public User(){
        this.firstName = "";
        this.lastName = "";
        this.email = "";
        this.password = "";
        this.address = "";
        this.city = "";
        this.state = "";
        this.zip = "";
        this.creditCardType = "";
        this.creditCardNumber = "";
        this.creditCardMonth = "";
        this.creditCardYear = "";
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getCreditCardType() {
        return creditCardType;
    }

    public void setCreditCardType(String creditCardType) {
        this.creditCardType = creditCardType;
    }

    public String getCreditCardNumber() {
        return creditCardNumber;
    }

    public void setCreditCardNumber(String creditCardNumber) {
        this.creditCardNumber = creditCardNumber;
    }

    public String getCreditCardMonth() {
        return creditCardMonth;
    }

    public void setCreditCardMonth(String creditCardMonth) {
        this.creditCardMonth = creditCardMonth;
    }

    public String getCreditCardYear() {
        return creditCardYear;
    }

    public void setCreditCardYear(String creditCardYear) {
        this.creditCardYear = creditCardYear;
    }
    
    /**
     * Concatenates firstName and lastName and returns
     * @return Full User Name
     */
    public String getFullName() {
        return getFirstName() + " " + getLastName();
    }
    
    /**
     * Concatenates street address, city, state, and zip and returns
     * @return  Full User Address
     */
    public String getFullAddress() {
        //Create string builder object
        StringBuilder sb = new StringBuilder();
        
        sb.append(getAddress()).append(", ");
        sb.append(getCity()).append(", ");
        sb.append(getState()).append(" ");
        sb.append(getZip());
        
        return sb.toString();
    }
}
