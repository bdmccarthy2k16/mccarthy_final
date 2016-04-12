package TOBA.login;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {
        
    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {

        String url = "/login.html";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "login";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("login")) {                
            // get parameters from the request
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            if (username.equals("jsmith@toba.com")) {
                url = "/account_activity.html";
            }
            else {
                url ="/login_failure.html";
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