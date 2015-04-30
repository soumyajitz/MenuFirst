<%-- 
    Document   : Adminlogout
    Created on : Apr 25, 2015, 1:43:37 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           session.invalidate();
           %>
           <script type="text/javascript">
               alert("Admin Successfully Logged Out");
               location.href="Admin.jsp";
           </script>
           <%
       %>
    </body>
</html>
