<%-- 
    Document   : Search.jsp
    Created on : Apr 15, 2015, 1:07:39 AM
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
        <title>JSP Page</title>
        <style>
            .myTable img:hover{height: 300px;width: 400px;}
            .myTable{
                margin-left: 500px;
            }
            #search1{margin-left: 370px;}
            #nameField{width:500px;}
            #bestCarsCarousel
            {
                border-radius: 5px;
                margin-left: 300px;
                height: 550px;
                width:800px;
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
                        
                        
                        <% if(s1==null)
                        { %>
                        <li><a href="Signup.jsp">Sign up &nbsp;<span class="label label-default">New User</span></a></li>
                        <li><a href="Login.jsp">Login</a></li>
                        <%
                        }
                        else
                        {
                        %>
                        <li><a href="#">
                        <%
                        out.println(s1);
                        %>
                            </a>
                        </li>
                        <li><a href="Logout.jsp">Logout</a></li>
                        <%
                        }
                        %>
                    </ul>
                </div>
            </div>
        </div>
         <form class="form-inline" method="get" action="Search.jsp">
        <div id="search1">
            <input type="text" class="form-control" id="nameField" placeholder="Search" name="text1" />
            <button type="submit" class="btn btn-primary" id="b1" name="b1" value="Search Menu">Search Menu</button>
        </div>
            <hr>
            
            
            <% //Items %>
            
<%  
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","soumyajit");
    PreparedStatement ps;
    String but=request.getParameter("b1");
    if(but.equalsIgnoreCase("Search Menu"))
    {
    String search=request.getParameter("text1");
    search=search.toLowerCase();
    ps=con.prepareStatement("Select * from ITEMS where ITEMTYPE like '%"+search+"%' or ITEMNAME like '%"+search+"%'");
    ResultSet rs = ps.executeQuery();
    ArrayList i=new ArrayList();
        while(rs.next())
        {
            Item it=new Item();
            it.setItemid(rs.getString(1));
            it.setItemimage(rs.getString(2));
            it.setItemprice(rs.getString(3));
            it.setItemname(rs.getString(4));
            it.setItemtype(rs.getString(5));
            it.setItemingredient(rs.getString(6));
            i.add(it);
        }
        %>
        <table border="0" class="myTable">
        <%
        Item i1;//,i2,i3;
        for(int k=0;k<i.size();k++)
        {
           i1=(Item)i.get(k);
           //i2=(Item)i.get(k+1);
           //i3=(Item)i.get(k+2);
        %>
        <tr>    
            <td>
                <img src="images/<%=i1.getItemimage() %>" alt="Food Image" height="250" width="360" />
                <br>
                <%=i1.getItemname() %>
                <br>
                <%=i1.getItemprice() %>
                <br>
                <a href="Features.jsp?code=<%=i1.getItemid() %>">Details</a>
            </td>
        </tr>
       
        <%}
}
%>
            
        </table>   
        </form>
        
        
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </body>
</html>
