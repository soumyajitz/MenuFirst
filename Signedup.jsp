<%-- 
    Document   : Signedup
    Created on : Apr 2, 2015, 8:11:19 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.activation.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signed Up Page</title>
        <style>
            #search1{margin-left: 370px;}
            #nameField{width:500px;}
            .l1{margin-left:350px;}
            #b1{margin-left: 350px;}
        </style>
    </head>
    <body>
 
        <div class="navbar navbar-default">
            <div class="container-fluid">
            <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar-content">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">MenuFirst</a>
            </div>
                <div class="collapse navbar-collapse" id="mynavbar-content">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="page1.jsp">Home</a></li>                                              
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">About <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Board of Members</a></li>
                                    <li><a href="#">Developers Team</a></li>
                                    <li><a href="#">Designing Team</a></li>
                                    <li class="divider"></li>
   
                                </ul>
                            </li>
                        <li><a href="Cuisine.jsp">Cuisine</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;&nbsp;</a></li>
                    </ul>
                </div>
            </div>
        </div>
           <%
        try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","soumyajit");
                 String Name=request.getParameter("t1");
                 String Email=request.getParameter("t2");
                 String Password=request.getParameter("t3");
                 String Phone=request.getParameter("t4");
                 String Address=request.getParameter("t5");
                 PreparedStatement ps=con.prepareStatement("insert into Customer_Details values(?,?,?,?,?)");
                 ps.setString(1,Name);
                 ps.setString(2,Email);
                 ps.setString(3,Password);
                 ps.setString(4,Phone);
                 ps.setString(5,Address);
                 int i=ps.executeUpdate();
                 if(i>0)
                 {
                     out.println("<h1>Registered</h1>");
                     %>
                     Go to <a href="Login.jsp">Login Page</a>
        <%
                 }
                 else
                     out.println("Not Registered");
                 
                 
        }  catch(Exception e)
        {
            System.out.println("Error in page:"+e.getMessage());
        }  
        %>
        
        
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </body>
</html>
