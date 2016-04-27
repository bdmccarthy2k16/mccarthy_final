<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
    <div>       
            <header>
                <img src="titan-header.png" alt="Titan Online Banking Application" title="Titan Online Banking Application" />
            </header>
            <main>
                <h2 class="home-options">
                    Please provide your username and password:
                </h2>
                <form action="login" method="post" class="login-form">
                    <p>
                        <label for="username">Username: </label><br />
                        <input type="text" name="username" />                        
                    </p>
                    <p>
                        <label for="password">Password: </label><br />
                        <input type="password" name="password" />
                    </p>
                    <p>
                        <input type="submit" value="Login!" />
                    </p>
                </form>
                <p class="home-options">
                    <a href="index.jsp">Return Home</a>
                    <br />
                    <a href="new_customer.jsp">New Customer Sign Up</a>&nbsp;&nbsp;|&nbsp;&nbsp;                    <a href="password_reset.jsp">Reset Password</a>
                </p>
            </main>
        
    </div>
<c:import url="/includes/footer.jsp" />