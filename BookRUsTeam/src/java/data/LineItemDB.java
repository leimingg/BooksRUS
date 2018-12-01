/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import business.*;
import java.sql.*;


public class LineItemDB {
    public static void insert(LineItem lineItem, Order order) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query
                = "INSERT INTO LineItem (invoiceID, productID, "
                + "quantity) VALUES (?, ?, ?)";
        
        String identityQuery = "SELECT lineItemID FROM LineItem "
                    + "WHERE invoiceID = ? AND productID = ?";
        
        try {
            ps = connection.prepareStatement(query);
            ps.setInt(1, order.getOrderID());
            ps.setInt(2, lineItem.getProduct().getProductID());
            ps.setInt(3, lineItem.getQuantity());
            ps.executeUpdate();
            
            ps = connection.prepareStatement(identityQuery);
            ps.setInt(1, order.getOrderID());
            ps.setInt(2, lineItem.getProduct().getProductID());
            rs = ps.executeQuery();
            rs.next();
            
            lineItem.setLineItemID(rs.getInt("lineItemID"));
            
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
}
