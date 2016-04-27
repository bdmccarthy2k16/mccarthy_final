package TOBA.login;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {
        
    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {

        String url = "/login.jsp";

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
            
            if(username.equals("jsmith@toba.com")) {
                if(password.equals("letmein")) {
                    url = "/account_activity.jsp";
                }
                else {
                    url ="/login_failure.jsp";
                }
            }
            else {
                url ="/login_failure.jsp";
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