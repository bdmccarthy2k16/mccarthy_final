<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />

    <div>       
            <header>
                <img src="titan-header.png" alt="Titan Online Banking Application" title="Titan Online Banking Application" />
            </header>
            <main>
                <h2 class="home-options">
                    Please provide the following information to create your online account:
                </h2>
                <form action="newCustomer" method="post" class="login-form">
                    <p>
                        <c:if test="${message != null}">
                            <p><i>${message}</i></p>
                        </c:if>
    

<c:if test="${message != null}">
    <p><i>${message}</i></p>
</c:if></p>
                    <p>
                        <label for="firstName">First Name: </label><br />
                        <input type="text" name="firstName" size="40" />                        
                    </p>
                    <p>
                        <label for="lastName">Last Name: </label><br />
                        <input type="text" name="lastName" size="40" />                        
                    </p>
                    <p>
                        <label for="phone">Phone: </label><br />
                        <input type="tel" name="phone" size="40" />                        
                    </p>
                    <p>
                        <label for="address">Address: </label><br />
                        <input type="text" name="address" size="40" />                        
                    </p>
                    <p>
                        <label for="city">City: </label><br />
                        <input type="text" name="city" size="40" />                        
                    </p>
                    <p>
                        <label for="state">State: </label><br />
                        <input type="text" name="state" size="40" />                        
                    </p>
                    <p>
                        <label for="zipCode">ZIP Code: </label><br />
                        <input type="text" name="zipCode" size="40" />                        
                    </p>
                    <p>
                        <label for="username">Username: </label><br />
                        <input type="text" name="username" size="40" />                        
                    </p>
                    <p>
                        <label for="password">Password: </label><br />
                        <input type="password" name="psasword" size="40" />                        
                    </p>
                    <p>
                        <label for="email">Email: </label><br />
                        <input type="email" name="email" size="40" />                        
                    </p>
                    <p>
                        <input type="submit" value="Create New Customer" />
                    </p>
                </form>
                <p class="home-options">
                    <a href="index.jsp">Return Home</a>
                </p>
            </main>
        
    </div>

<c:import url="/includes/footer.jsp" />