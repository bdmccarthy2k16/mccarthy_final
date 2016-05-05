package TOBA.login;

import TOBA.business.User;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class NewCustomerServlet extends HttpServlet {
        
    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {

        String url = "/new_customer.jsp";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "NewCustomer";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("newCustomer")) {                
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String zipCode = request.getParameter("zipCode");
            String email = request.getParameter("email");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            // validate that data was submitted
            String message;
            if (firstName == null || lastName == null || phone == null || address == null || city == null || state == null || zipCode == null || username == null || password == null || firstName.isEmpty() || lastName.isEmpty() || phone.isEmpty() || address.isEmpty() || state.isEmpty() || zipCode.isEmpty() || username.isEmpty() || password.isEmpty()) {
                message = "Please fill out all the form fields.";
                url = "/new_customer.jsp";
            }
            else {            
                User user = new User(firstName, lastName, phone, address, city, state, zipCode,email); 
                HttpSession session = request.getSession();
                session.setAttribute("user",user);
                message = "";
                url = "/success.jsp";
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