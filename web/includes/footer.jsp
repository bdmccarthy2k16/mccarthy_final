<%@page import="java.util.GregorianCalendar, java.util.Calendar" %>
<%
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>
<hr style="margin-top:30px;" />
<p class="copyright">&copy;Copyright <%= currentYear %> Titan Online Banking Application.</p>
</body>
</html>