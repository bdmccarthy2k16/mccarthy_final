<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
    <div>       
            <header>
                <img src="titan-header.png" alt="Titan Online Banking Application" title="Titan Online Banking Application" />
            </header>
            <main>
                <p>Submit the form below to reset your password:</p>
                <form action="reset" method=post">
                    <p>
                        <label for="password">New Password: </label>
                        <input type="password" name="password" />
                    </p>
                    
                </form>
            </main>
        
    </div>
<c:import url="/includes/footer.jsp" />