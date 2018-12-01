/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.sql.*;
import business.*;


public class UserDB {
    
    public static void insert(User user) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query
                = "INSERT INTO User (email, password) "
                + "VALUES (?, ?)";
        
        String identityQuery = "SELECT userID FROM User "
                    + "WHERE email = ?";
        
        try {
            //Insert new user
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getPassword());
            ps.executeUpdate();
            
            //Get the user ID from the last INSERT statement.
            ps = connection.prepareStatement(identityQuery);
            ps.setString(1, user.getEmail());
            rs = ps.executeQuery();
            rs.next();
            
            // Set the user ID in the User object
            user.setUserID(rs.getInt("userID"));
        } catch (SQLException e) {
            System.err.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    public static void update(User user) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        //ResultSet rs = null;

        String query = "UPDATE User SET "
                + "firstName = ?, "
                + "lastName = ?, "
                + "email = ?, "
                + "password = ?, "
                + "address = ?, "
                + "city = ?, "
                + "state = ?, "
                + "zip = ?, "
                + "creditCardType = ?, "
                + "creditCardNumber = ?, "
                + "creditCardMonth = ?, "
                + "creditCardYear = ? "
                + "WHERE email = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getFirstName());
            ps.setString(2, user.getLastName());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getAddress());
            ps.setString(6, user.getCity());
            ps.setString(7, user.getState());
            ps.setString(8, user.getZip());
            ps.setString(9, user.getCreditCardType());
            ps.setString(10, user.getCreditCardNumber());
            ps.setString(11, user.getCreditCardMonth());
            ps.setString(12, user.getCreditCardYear());
            ps.setString(13, user.getEmail());

            ps.executeUpdate();
        } catch (SQLException e) {
            System.err.println(e);
        } finally {
            //DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    public static User selectUser(String email) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT * FROM User "
                + "WHERE email = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            User user = null;
            if (rs.next()) {
                user = new User();
                user.setUserID(rs.getInt("userID"));
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setAddress(rs.getString("address"));
                user.setCity(rs.getString("city"));
                user.setState(rs.getString("state"));
                user.setZip(rs.getString("zip"));
                user.setCreditCardType(rs.getString("creditCardType"));
                user.setCreditCardNumber(rs.getString("creditCardNumber"));
                user.setCreditCardMonth(rs.getString("creditCardMonth"));
                user.setCreditCardYear(rs.getString("creditCardYear"));
            }
            return user;
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static boolean emailExists(String email) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT email FROM User "
                + "WHERE email = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            System.err.println(e);
            return false;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    } 
}
