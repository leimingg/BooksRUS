/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import business.Product;
import java.sql.*;
import java.util.*;


public class ProductDB {
    //This method returns null if a product isn't found.
    public static ArrayList<Product> selectProducts(String productCategory) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query 
                = "SELECT * FROM Product WHERE productCategory = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, productCategory);
            rs = ps.executeQuery();
            ArrayList<Product> products = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product();
                p.setProductID(rs.getInt("productID"));
                p.setProductCategory(rs.getString("productCategory"));
                p.setProductImageURL(rs.getString("productImageURL"));
                p.setProductTitle(rs.getString("productTitle"));
                p.setProductAuthor(rs.getString("productAuthor"));
                p.setProductPrice(rs.getDouble("productPrice"));
                products.add(p);
            }
            return products;
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static Product selectProduct(int productID, String productCategory) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query 
                = "SELECT * FROM Product "
                + "WHERE productID = ? AND productCategory = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setInt(1, productID);
            ps.setString(2, productCategory);
            rs = ps.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                p.setProductID(rs.getInt("productID"));
                p.setProductCategory(rs.getString("productCategory"));
                p.setProductImageURL(rs.getString("productImageURL"));
                p.setProductTitle(rs.getString("productTitle"));
                p.setProductAuthor(rs.getString("productAuthor"));
                p.setProductPrice(rs.getDouble("productPrice"));
                return p;
            } else {
                return null;
            }
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
}
