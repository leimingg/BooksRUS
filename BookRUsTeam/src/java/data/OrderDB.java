/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;
import java.sql.*;
import business.*;


public class OrderDB {
    
    public static void insert (Order order) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query
                = "INSERT INTO PurchaseOrder (userID, grandTotal) "
                + "VALUES (?, ?)";
        
        String identityQuery = "SELECT orderID FROM PurchaseOrder "
                    + "WHERE userID = ? AND grandTotal = ?";
        
        try {
            //Insert new user
            ps = connection.prepareStatement(query);
            ps.setInt(1, order.getUserID());
            ps.setDouble(2, order.getOrderTotal());
            ps.executeUpdate();
            
            //Get the user ID from the last INSERT statement.
            ps = connection.prepareStatement(identityQuery);
            ps.setInt(1, order.getUserID());
            ps.setDouble(2, order.getOrderTotal());
            rs = ps.executeQuery();
            rs.next();
            
            // Set the order ID in the Order object
            order.setOrderID(rs.getInt("orderID"));
        } catch (SQLException e) {
            System.err.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
        
    }
    
}
