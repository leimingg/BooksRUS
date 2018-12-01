/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import business.*;
import data.ProductDB;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;



public class ProductCatalogServlet extends HttpServlet {

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
            out.println("<title>Servlet ProductCatalogServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductCatalogServlet at " + request.getContextPath() + "</h1>");
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
        //Get request parameter action
        String action = request.getParameter("action");
        
        //Get session object
        HttpSession session = request.getSession(true);
        
        //Declare CategoryProducts variable
        CategoryProducts categoryProducts = null;
        
        //Initialize product catalog URL
        String url = "/catalog/" + action.substring(4) + ".jsp";
        
        //Declare variable message
        String message = "";
        
        //Get the appropriate categoryProducts object
        switch (action) {
            case "goHome":
                url = "/index.jsp";
                break;
            case "showCart":
                url = "/cart/cart.jsp";
                break;
            case "showRegistration":
                url = "/accounts/register.jsp";
                break;
            case "showClassics":
                categoryProducts = getProducts(action.substring(4));
                //Set categoryProducts attribute in session
                session.setAttribute("categoryProducts", categoryProducts);
                break;
            case "showBusiness":
                categoryProducts = getProducts(action.substring(4));
                //Set categoryProducts attribute in session
                session.setAttribute("categoryProducts", categoryProducts);
                break;
            case "showTechnology":
                categoryProducts = getProducts(action.substring(4));
                //Set categoryProducts attribute in session
                session.setAttribute("categoryProducts", categoryProducts);
                break;
            default:
                break;
        }
        
        //Set message attribute in session
        session.setAttribute("message", message);
        
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
        processRequest(request, response);
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
    
    private CategoryProducts getProducts(String productCategory) {
        
        //Create categoryProducts object and initialize with DB data
        CategoryProducts categoryProducts = new CategoryProducts();
        categoryProducts.setItems(ProductDB.selectProducts(productCategory));
        
        return categoryProducts;
    }

}
