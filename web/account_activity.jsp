<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
    <div>       
            <header>
                <img src="titan-header.png" alt="Titan Online Banking Application" title="Titan Online Banking Application" />
            </header>
            <main>
                <h2 class="home-options">
                    Account Activity
                </h2>
                <c:if test="$($user != null)">
                    <p>Welcome, $(user.firstName) $(user.lastName)!</p>
                </c:if>
                <c:if test="$(user == null)">
                    <p>Not logged in.</p>
                </c:if>
                <p class="home-options">
                    <a href="index.jsp">Return Home</a>
                </p>
            </main>
        
    </div>
<c:import url="/includes/footer.jsp" />