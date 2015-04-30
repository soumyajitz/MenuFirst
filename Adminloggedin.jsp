<%-- 
    Document   : Adminloggedin
    Created on : Apr 25, 2015, 1:34:29 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.activation.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","soumyajit");
    String s1=request.getParameter("b1");
    if(s1.equalsIgnoreCase("Login"))
    {
        PreparedStatement ps=con.prepareStatement("select * from Customer_Details where  Email=? and Password=?");
        ps.setString(1,request.getParameter("T1"));
        ps.setString(2,request.getParameter("T2"));
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
            session.setAttribute("name",rs.getString(1));
            response.sendRedirect("Admin.jsp");
        }
        else
        {
        %>
        <script>
            alert("Wrong Username or Password....Try Again");
            location.href="Adminlogin.jsp";
        </script>
        <%
        }
    }
}catch(Exception e)
{ 
    System.out.println(e.getMessage());
}
%>
        
    </body>
</html>
