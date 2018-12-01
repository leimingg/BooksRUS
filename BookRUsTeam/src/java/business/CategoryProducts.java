/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import java.io.Serializable;
import java.util.*;


public class CategoryProducts implements Serializable{
    
    private ArrayList<Product> items;
    
    public CategoryProducts() {
        items = new ArrayList<Product>();
    }

    public ArrayList<Product> getItems() {
        return items;
    }

    public void setItems(ArrayList<Product> items) {
        this.items = items;
    }
    
    public int getCount() {
        return items.size();
    }
    
    public void addItem(Product product) {
        items.add(product);
    }
    
    public void removeItem(Product item) {
        int productID = item.getProductID();
        for (int i=0; i<items.size(); i++) {
            Product productItem = items.get(i);
            if (item.getProductID() == productID) {
                items.remove(productItem);
                return;
            }
        }
    }
}
