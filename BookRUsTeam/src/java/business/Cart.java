/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import java.io.Serializable;
import java.util.*;


public class Cart implements Serializable{
    private ArrayList<LineItem> items;
    
    public Cart() {
        items = new ArrayList<LineItem>();
    }

    public ArrayList<LineItem> getItems() {
        return items;
    }

    public void setItems(ArrayList<LineItem> items) {
        this.items = items;
    }

    public int getCount() {
        return items.size();
    }
    
    public void addItem(LineItem item) {
        int productID = item.getProduct().getProductID();
        int quantity = item.getQuantity();
        for (LineItem lineItem : items) {
            //Modify quantity only if the item already exists
            if (lineItem.getProduct().getProductID() == productID) {
                lineItem.setQuantity(quantity);
                return;
            }
        }
        items.add(item);
    }
    
    public void removeItem(LineItem item) {
        String code = item.getProduct().getProductCategory();
        for (int i=0; i<items.size(); i++) {
            LineItem lineItem = items.get(i);
            if (lineItem.getProduct().getProductCategory().equals(code)) {
                items.remove(i);
                return;
            }
        }
    }
    
}
