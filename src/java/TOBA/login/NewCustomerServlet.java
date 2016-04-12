package TOBA.login;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class NewCustomerServlet extends HttpServlet {
        
    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {

        String url = "/new_customer.html";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "new_customer";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("new_customer")) {                
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String zipCode = request.getParameter("zipCode");
            
            // validate that data was submitted
            String message;
            if (firstName == null || lastName == null || phone == null || address == null || city == null || state == null || zipCode == null || firstName.isEmpty() || lastName.isEmpty() || phone.isEmpty() || address.isEmpty() || state.isEmpty() || zipCode.isEmpty()) {
                message = "Please fill out all the form fields.";
                url = "/new_customer.html";
            }
            else {
                message = "";
                url = "/success.html";
            }
        }
        
        // forward request and response objects to specified URL
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }    
    
    @Override
    protected void doGet(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {
        doPost(request, response);
    }    
}