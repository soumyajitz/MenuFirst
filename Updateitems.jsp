<%-- 
    Document   : Updateitems
    Created on : Apr 25, 2015, 6:10:47 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.activation.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="item.Item"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <style>
            #search1{margin-left: 370px;}
            #nameField{width:500px;}
            #bestCarsCarousel
            {
                border-radius: 5px;
                margin-left: 300px;
                height: 550px;
                width:800px;
            }
            #b1{
                margin-left: 600px;
                padding:10px;
            }
            .form-group{
                margin-left: 400px;
            }
        </style>
    </head>
    <body>
<%
    String s1=(String)session.getAttribute("name");
%>
        <div class="navbar navbar-default">
            <div class="container-fluid">
            <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar-content">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Administrator</a>
            </div>
                <div class="collapse navbar-collapse" id="mynavbar-content">
                    <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">About <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Board of Members</a></li>
                                    <li><a href="#">Developers Team</a></li>
                                    <li><a href="#">Designing Team</a></li>
                                    <li class="divider"></li>
   
                                </ul>
                            </li>
                      
                            <li class="active"><a href="Admin.jsp">Admin</a></li>
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
                        
                       
                            <%if (s1==null)
                            {
                                
%>
                            <li><a href="Adminlogin.jsp">Admin Login</a></li>
<%
                            }
                            else
                            {
                        %>
                        <li><a href="#">
                        <%
                        out.println("Welcome "+s1);
                        %>
                            </a>
                        </li>
                        <li><a href="Adminlogout.jsp">Logout</a></li>
                          </ul>
                </div>
            </div>
        </div>
                        <hr/>
                        <form action="Updated.jsp" method="post" name="f1">
                        <%  
                        
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","soumyajit");
    String itemid=request.getParameter("code");
    session.setAttribute("itid",itemid);
    PreparedStatement ps;
    ps=con.prepareStatement("Select * from ITEMS where itemid='"+itemid+"'");
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {%>
        
            <div class="form-group"><label class="l1">ItemId<input type="text" readonly="readonly" name="t1" class="form-control" id="nameField"  value="<%=rs.getString(1)%>" /></label></div>
            <div class="form-group"><label class="l1">ItemImage<input type="text" name="t2" class="form-control" id="nameField" value="<%=rs.getString(2)%>" /></label></div>
            <div class="form-group"><label class="l1">ItemPrice<input type="text" name="t3" class="form-control" id="nameField" value="<%=rs.getString(3)%>" /></label></div>
            <div class="form-group"><label class="l1">ItemName<input type="text" name="t4" class="form-control" id="nameField" value="<%=rs.getString(4)%>"  /></label></div>
            <div class="form-group"><label class="l1">ItemType<input type="text" name="t5" class="form-control" id="nameField" value="<%=rs.getString(5)%>"  /></label></div>
            <div class="form-group"><label class="l1">Ingredients<textarea class="form-control" name="t6" id="nameField"  /><%=rs.getString(6)%></textarea></label></div>
            <%
        
    }
    
    
    %>
    <button type="submit" class="btn btn-primary" id="b1" name="b1" value="Update Item">Update Items </button>
                        <%
                        }  
                           
%>                            
                        
<div>
    <%
                            
                             if (s1==null)
                        {
                            out.print("</ul></div></div></div>");
                            out.println("<h1>Login to get Admin Facilities</h1>");
                        }
    %>
</div>               
                  
                        
        </form>
        
        
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </body>
</html>
