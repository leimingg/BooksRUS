/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import business.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import business.User;
import data.UserDB;


public class AccountServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AccountServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AccountServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "/index.jsp";
        if (action.equals("deleteCookies")) {
            url = deleteCookies(request, response);
        } else if (action.equals("logout")) {
            url = logoutUser(request, response);
        }
        //processRequest(request, response);
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String requestURI;
        try {
            requestURI = request.getRequestURI().
                    substring(0, request.getRequestURI().indexOf(";"));
        } catch (StringIndexOutOfBoundsException e) {
            requestURI = request.getRequestURI();
        }
        String url = "/index.jsp";
        if (requestURI.endsWith("/register")) {
            url = shortRegisterUser(request, response);
        } else if (requestURI.endsWith("/login")) {
            url = loginUser(request, response);
        } else if (requestURI.endsWith("/logout")) {
            url = logoutUser(request, response);
        }
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    private String logoutUser(HttpServletRequest request, 
            HttpServletResponse response) {
        
        //Get session object
        HttpSession session = request.getSession();
        
        //Remove session attributes
        session.removeAttribute("user");
        session.removeAttribute("cart");
        session.removeAttribute("categoryProducts");
        session.removeAttribute("message");
        
        //Invalidate the session
        session.invalidate();
        
        //Return next page URL
        return "/accounts/logout.jsp";
    }
    
    private String loginUser(HttpServletRequest request,
            HttpServletResponse response) {
        //Declare url and message variables
        String url;
        String message;
        
        //Get user email and password from login form
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        //Get session object
        HttpSession session = request.getSession();
        
        if (UserDB.emailExists(email) 
                && UserDB.selectUser(email).getPassword().equals(password)) {
            //Correct credentials
            
            //Set error message
            message = "";
            
            //Initialize cart object with attribute from session
            Cart cart = (Cart) session.getAttribute("cart");
            
            //Initialize user object with database information
            User user = UserDB.selectUser(email);
            
            //Set cart, user, and message attributes in session
            session.setAttribute("user", user);
            session.setAttribute("cart", cart);
            session.setAttribute("message", message);
            
            //Initialize next page URL
            url = "/cart/checkout.jsp";
        } else {
            //Incorrect credentials
            
            //Set error message
            message = "Incorrect username and password. "
                    + "Please try again.";
            
            //Set message attribute in session
            request.setAttribute("message", message);
            
            //Initialize next page URL
            url = "/accounts/login.jsp";
        }
        
        //Return next page URL
        return url;
    }
    
    private String shortRegisterUser(HttpServletRequest request,
            HttpServletResponse response) {
        
        //get user parameters from form
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        //Declare variables
        String url;
        String message;
        User user;
        
        //Check if user is already in database
        if (UserDB.emailExists(email)) {
            //Ask for a different email address to register new user
            message = "This email address already exists. <br>"
                    + "Please enter another email address.<br>";
            request.setAttribute("message", message);
            url = "/accounts/register.jsp";
        } else {
            //Create user object
            user = new User();
            user.setEmail(email);
            user.setPassword(password);
            
            //Write new user to database
            UserDB.insert(user);
            message = "Thanks for registering with Books R Us!";
            
            
            //Get session object and set attributes
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("message", message);
            
            //return to main index page
            url = "/index.jsp";
        }
        
        //Return next page URL
        return url;
    }
    
    //Method used for debugging purposes only
    private String deleteCookies(HttpServletRequest request,
            HttpServletResponse response) {

        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
            cookie.setMaxAge(0);
            cookie.setPath("/");
            response.addCookie(cookie);
            }
        }
        return "/delete_cookies.jsp";
    }
}
