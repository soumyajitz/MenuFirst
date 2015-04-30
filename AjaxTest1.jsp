<%-- 
    Document   : AjaxTest1
    Created on : Apr 15, 2015, 2:21:24 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Ajax</title>
</head>
<body>
<%@page import="java.sql.*"%>
 <%
 String name=request.getParameter("q");
 String buffer="<div>";
 Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","soumyajit");
 Statement stmt = con.createStatement();
 ResultSet rs = stmt.executeQuery("Select distinct ITEMTYPE  from ITEMS where ITEMTYPE LIKE '%"+name+"%'");
   while(rs.next()){
   buffer=buffer+"<input type='text' name='food' value="+rs.getString("ITEMTYPE") +">"+"<br>";
   }
 buffer=buffer+"</div>";
 response.getWriter().println(buffer);
 %>
</body>
</html>
