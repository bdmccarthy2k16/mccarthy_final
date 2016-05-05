
package TOBA.login;

import TOBA.business.User;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResetServlet extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    
    String password = request.getParameter("password");
    
    HttpSession session = request.getSession();
    User user = (User)session.getAttribute("user");
    
    user setPassword(password);
    session.setAttribute("user",user);
    
    UserDB.update(user);
}