<%-- 
    Document   : Logout
    Created on : Apr 11, 2015, 10:38:38 PM
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
               alert("Successfully Logged Out");
               location.href="page1.jsp";
           </script>
           <%
       %>
    </body>
</html>
