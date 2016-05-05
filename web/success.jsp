<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
    <div>       
            <header>
                <img src="titan-header.png" alt="Titan Online Banking Application" title="Titan Online Banking Application" />
            </header>
            <main>
                <h2 class="home-options">
                    Success!
                </h2>
                <p class="success">
                    Account successfully created!
                </p>
                <p>Username: $(user.username)</p>
                <p>Password: $(user.password)</p>
                <p>First Name: $(user.firstName)</p>
                <p>Last Name: $(user.lastName)</p>
                <p>Phone: $(user.phone)</p>
                <p>Address: $(user.address)</p>
                <p>City: $(user.city)</p>
                <p>State: $(user.state)</p>
                <p>ZIP Code: $(user.zipCode)</p>
                <p>Email: $(user.email)</p>
            </main>
        
    </div>
<c:import url="/includes/footer.jsp" />