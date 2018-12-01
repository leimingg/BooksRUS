/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import business.*;
import data.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import util.MailUtilGmail;


public class CartServlet extends HttpServlet {

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
            out.println("<title>Servlet CartServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartServlet at " + request.getContextPath() + "</h1>");
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
        doPost(request, response);
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
        String requestURI = request.getRequestURI();
        String url = "/index.jsp";
        if (requestURI.endsWith("/addItem")) {
            url = addItem(request, response);
        } else if (requestURI.endsWith("/updateItem")) {
            url = updateItem(request,response);
        } else if (requestURI.endsWith("/removeItem")) {
            url = removeItem(request, response);
        } else if (requestURI.endsWith("/orderSummary")) {
            url = orderSummary(request, response);
        } else if (requestURI.endsWith("/keepShopping")) {
            url = "/index.jsp";
        } else if (requestURI.endsWith("/orderPayment")) {
            url = orderPayment(request, response);
        } else if (requestURI.endsWith("/submitPayment")) {
            url = submitPayment(request, response);
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
    
    private String addItem(HttpServletRequest request,
            HttpServletResponse response){
        
        //Declare url variable
        String url;
        
        //Get productID and productCategory parameters from form
        int productID = Integer.parseInt(request.getParameter("productID"));
        String productCategory = request.getParameter("productCategory");
        
        //Get product object from database
        Product product = ProductDB.selectProduct(productID, productCategory);
        
        //Get session object
        HttpSession session = request.getSession();
        
        //Initialize cart object with attribute from session
        Cart cart = (Cart) session.getAttribute("cart");
        
        //Create cart object if session did not have a cart attribute
        if (cart == null) {
            cart = new Cart();
        }
        
        //Add product to shopping cart object
        if (product != null) {
            LineItem lineItem = new LineItem();
            lineItem.setProduct(product);
            cart.addItem(lineItem);
        }
        
        //Initialize user object with attribute from session
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            //Create user object if session did not have a user attribute
            user = new User();
        }
        
        //Set cart and user attributes in session
        session.setAttribute("cart", cart);
        session.setAttribute("user", user);
        
        //Initialize next page URL
        url = "/cart/cart.jsp";
        
        //Return next page URL
        return url;
    }
    
    private String updateItem(HttpServletRequest request,
            HttpServletResponse response) {
        
        //Declare url variable
        String url;
        
        //Get session object
        HttpSession session = request.getSession();
        
        //Initialize cart object with attribute from session
        Cart cart = (Cart) session.getAttribute("cart");
        
        //Create cart object if session did not have a cart attribute
        if (cart == null) {
            cart = new Cart();
        }
        
        //Get productID, productCategory, and productQty parameters from form
        int productID = Integer.parseInt(request.getParameter("productID"));
        String productCategory = request.getParameter("productCategory");
        String productQty = request.getParameter("productQty");
        
        //Declare quantity variable
        int quantity;
        
        //Initialize quantity variable to 1 if user enters invalid data
        try {
            quantity=Integer.parseInt(productQty);
            if (quantity < 0) {
                quantity = 1;
            }
        } catch (NumberFormatException e) {
            quantity = 1;
        }
        
        //Get product object from database
        Product product = ProductDB.selectProduct(productID, productCategory);
        
        //Update quantity for product line item in cart
        if (product != null) {
            LineItem lineItem = new LineItem();
            lineItem.setProduct(product);
            lineItem.setQuantity(quantity);
            if (quantity > 0) {
                cart.addItem(lineItem);
            } else {
                cart.removeItem(lineItem);
            }
        }
                
        //Set cart attribute in session
        session.setAttribute("cart", cart);
        
        //Initialize next page URL
        url = "/cart/cart.jsp";
        
        //Return next page URL
        return url;
    }
    
    private String removeItem(HttpServletRequest request,
            HttpServletResponse response) {
        
        //Declare url variable
        String url;
        
        //Get session object
        HttpSession session = request.getSession();
        
        //Initialize cart object with attribute from session
        Cart cart = (Cart) session.getAttribute("cart");
        
        //Get productID and productCategory parameters from form
        int productID = Integer.parseInt(request.getParameter("productID"));
        String productCategory = request.getParameter("productCategory");
        
        //Get product object from database
        Product product = ProductDB.selectProduct(productID, productCategory);
        
        //Remove product line item from cart
        if (product != null && cart != null) {
            LineItem lineitem = new LineItem();
            lineitem.setProduct(product);
            cart.removeItem(lineitem);
        }
        
        //Initialize next page URL
        url = "/cart/cart.jsp";
        
        //Set cart attribute in session
        session.setAttribute("cart", cart);
        
        //Return next page URL
        return url;
    }
    
    private String orderSummary(HttpServletRequest request,
            HttpServletResponse response) {
        
        //Declare URL variable
        String url;
        String message;
        
        //Get session
        HttpSession session = request.getSession();
        
        //Get user and cart attributes from session
        User user = (User) session.getAttribute("user");
        Cart cart = (Cart) session.getAttribute("cart");
        
        if (cart == null || cart.getCount() == 0) {
            //Set message and put in session
            message = "Cart empty. Cannot checkout an empty cart.";
            session.setAttribute("message", message);
            
            //Initialize next page URL
            url = "/cart/cart.jsp";
        } else {
            //Set message and put in session
            message = "";
            session.setAttribute("message", message);
            
            //Initialize next page URL
            url = "/cart/ordersummary.jsp";
            
            //Create order object and initialize userID value
            Order order = new Order();
            order.setUserID(user.getUserID());

            //Declare and initialize total variable
            double total = 0.0;

            //Declare and initialize cartContent variable
            ArrayList<LineItem> cartContent = cart.getItems();

            //Calculate cartContent total
            for (LineItem content : cartContent) {
                total += content.getProduct().getProductPrice() 
                        * content.getQuantity();
            }

            //Set order total
            order.setOrderTotal(total);
            
            //Set order attribute in session
            session.setAttribute("order", order);
        }
        
        //Return next page URL
        return url;
    }
    
    private String orderPayment (HttpServletRequest request,
            HttpServletResponse response) {
        
        //Declare URL variable
        String url;
        
        //Get session
        HttpSession session = request.getSession();
        
        //Get user attribute from session
        User user = (User) session.getAttribute("user");
        
        if (user.getEmail() == null || user.getEmail().equals("")) {
            //Initialize next page URL
            url = "/accounts/login.jsp";
        } else {
            //Initialize next page URL
            url = "/cart/checkout.jsp";
        }
        
        //Return next page URL
        return url;
    }
    
    private String submitPayment (HttpServletRequest request,
            HttpServletResponse response) {
        
        //Declare and initialize URL variable
        String url = "/cart/thankyou.jsp";
        
        //Get session
        HttpSession session = request.getSession();
        
        //Get user, order, and cart attributes from session
        User user = (User) session.getAttribute("user");
        Order order = (Order) session.getAttribute("order");
        Cart cart = (Cart) session.getAttribute("cart");
        
        order.setUserID(user.getUserID());
        
        //Declare and initialize cartContent variable
        ArrayList<LineItem> cartContent = cart.getItems();
        
        //Get user data parameters from form and update user object values
        user.setFirstName(request.getParameter("firstName"));
        user.setLastName(request.getParameter("lastName"));
        user.setAddress(request.getParameter("address"));
        user.setCity(request.getParameter("city"));
        user.setState(request.getParameter("state"));
        user.setZip(request.getParameter("zip"));
        user.setCreditCardType(request.getParameter("cardType"));
        user.setCreditCardNumber(request.getParameter("cardNumber"));
        user.setCreditCardMonth(request.getParameter("cardMonth"));
        user.setCreditCardYear(request.getParameter("cardYear"));
        
        //Set updated user attribute in session
        session.setAttribute("user", user);
        
        //Save user, order, and cart line item objects in database
        UserDB.update(user);
        OrderDB.insert(order);
        for (LineItem content : cartContent) {
            LineItemDB.insert(content, order);
        }
        
        //Initialize email fields to, from, subject, and body
        String to = user.getEmail();
        String from = "gracielajhu682@gmail.com";
        String subject = "Books R Us Order #" + order.getOrderID() + " Confirmation";
        String body = getMessageBody(user, cart, order);
        boolean isBodyHTML = true;

        //Send order confirmation email
        try {
            MailUtilGmail.sendMail(to, from, subject, body, isBodyHTML);
        } catch (MessagingException e) {
            String errorMessage
                    = "ERROR: Unable to send email. "
                    + "Check Tomcat logs for details.<br>"
                    + "NOTE: You may need to configure your system "
                    + "as described in chapter 14.<br>"
                    + "ERROR MESSAGE: " + e.getMessage();
            request.setAttribute("errorMessage", errorMessage);
            this.log(
                    "Unable to send email. \n"
                    + "Here is the email you tried to send: \n"
                    + "=====================================\n"
                    + "TO: " + user.getEmail() + "\n"
                    + "FROM: " + from + "\n"
                    + "SUBJECT: " + subject + "\n"
                    + "\n"
                    + body + "\n\n");
        }
        
        //Remove cart, categoryProducts, and message session attributes
        session.removeAttribute("cart");
        session.removeAttribute("order");
        session.removeAttribute("categoryProducts");
        session.removeAttribute("message");
        
        //Return next page URL
        return url;
    }
    
    private String getMessageBody(User user, Cart cart, Order order) {
        //Create string builder object
        StringBuilder sb = new StringBuilder();
        
        //Set email body content
        sb.append("<html>");
        sb.append("<head>");
        sb.append("<meta http-equiv=\"Content-Type\" content=\"text/html; "
                + "charset=UTF-8\">");
        sb.append("<title>Books R Us Order Confirmation</title>");
        sb.append("<link rel=\"stylesheet\" href=\"styles/main.css\">");
        sb.append("</head>");
        sb.append("<body>");
        sb.append("<section>");
        sb.append("<h1>Thank you for your order, ").append(user.getFirstName()).append("!</h1>");
        sb.append("<h2>Order Details</h2>Order Number: ").append(order.getOrderID()).append("<br>");
        sb.append(buildProductTableForEmail(order.getOrderTotalCurrencyFormat(),cart));
        sb.append("<br>");
        sb.append("Shipping Details:<br>");
        sb.append(user.getFullName()).append("<br>");
        sb.append(user.getFullAddress()).append("<br><br>");
        sb.append("Payment Details:<br>");
        sb.append(user.getCreditCardType()).append("-");
        sb.append(user.getCreditCardNumber().substring(12)).append("<br><br>");
        sb.append("Your order is being processed and should ship within two business days.<br><br>");
        sb.append("We greatly appreciate your business!<br><br>Thanks,<br>Books R Us");
        sb.append("</section>");
        sb.append("</body>");
        sb.append("</html>");
        
        //Return email body content
        return sb.toString();
    }
    
    /**
     * Create a table for displaying product order details in a format
     * @param cart Cart that was checked out
     * @return HTML formatted string of table
     */
    private String buildProductTableForEmail(String orderTotal, Cart cart) {
        ArrayList<LineItem> items = cart.getItems();
        
        //Create string builder object
        StringBuilder sb = new StringBuilder();
        
        sb.append("<table border=\"1\" cellpadding=\"3\"><tr><th>Qty</th>");
        sb.append("<th>Product</th><th>Unit Price</th><th>Sub-Total</th></tr>");
        for (LineItem item : items) {
            sb.append("<tr><td>").append(item.getQuantity()).append("</td>");
            sb.append("<td>").append(item.getProduct().getProductTitle());
            sb.append(" - Item BRU-").append(item.getProduct().getProductID());
            sb.append("</td>");
            sb.append("<td>").append(item.getProduct().getPriceStringFormat());
            sb.append("</td>");
            sb.append("<td>").append(item.getTotalCurrencyFormat());
            sb.append("</td></tr>");
        }
        sb.append("<tr><td colspan=\"2\"></td><td><b>Total</b></td><td><b>");
        sb.append(orderTotal).append("</td></tr>");
        sb.append("</table>");
        
        // Return table string
        return sb.toString();
    }
}
