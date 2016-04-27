<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
            <header>
                <img src="titan-header.png" alt="Titan Online Banking Application" title="Titan Online Banking Application" />
            </header>
            <main>

<c:if test="${message != null}">
    <p><em>${message}</em></p>
</c:if>
                <h2 class="home-options">
                    Select from the options below:
                </h2>
                <p class="home-options">
                    <a href="login.jsp">Login</a>
                    <br />
                    <a href="new_customer.jsp">New Customer Sign Up</a>
                </p>
            </main>
<c:import url="/includes/footer.jsp" />