/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.text.NumberFormat;


public class Product implements Serializable{
    private int productID;
    private String productCategory;
    private String productImageURL;
    private String productTitle;
    private String productAuthor;
    private double productPrice;
    //private int productRating;
    //private String productReviews;
    
    public Product() {}

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public String getProductImageURL() {
        return productImageURL;
    }

    public void setProductImageURL(String productImageURL) {
        this.productImageURL = productImageURL;
    }

    public String getProductTitle() {
        return productTitle;
    }

    public void setProductTitle(String productTitle) {
        this.productTitle = productTitle;
    }

    public String getProductAuthor() {
        return productAuthor;
    }

    public void setProductAuthor(String productAuthor) {
        this.productAuthor = productAuthor;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }
    
    public String getPriceCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(productPrice);
    }
    
    /**
     * Gets productPrice as formatted decimal string with two places
     * @return Formatted string
     */
    public String getPriceStringFormat() {
        DecimalFormat df = new DecimalFormat("#.00");
        return df.format(productPrice);
    }
    
    public String getImageURL() {
        String imageURL = "/images/" + productCategory + "_cover.jpg";
        return imageURL;
    }

    /*
    public int getProductRating() {
        return productRating;
    }

    public void setProductRating(int productRating) {
        this.productRating = productRating;
    }

    public String getProductReviews() {
        return productReviews;
    }

    public void setProductReviews(String productReviews) {
        this.productReviews = productReviews;
    }
    */
    
}
