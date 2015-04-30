<%-- 
    Document   : Features
    Created on : Apr 15, 2015, 2:53:34 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.activation.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #search1{margin-left: 370px;}
            #nameField{width:500px;}
            .l1{margin-left:350px;}
            #b1{margin-left: 350px;}
            .tab{
                margin-left: 300px;
            }
            #but1{
                height: 60px;
                width:170px;
            }
        </style>
        <script type="text/javascript">
            function counts(){
                var a=document.f1.ta1.value.length;
                var h=100-a;
                document.getElementById("counts").innerHTML=h+" Characters Left";
            }
        </script>
    </head>
    
    <body onload="counts()">
 
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
                        <li><a href="Contact.jsp">Contact</a></li>
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
        <form method="get" action="Buy.jsp" name="f1">
            <%
            String s1=request.getParameter("code");
            session.setAttribute("val",s1);
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","soumyajit");
            PreparedStatement ps,ps1;
            ps=con.prepareStatement("Select * from ITEMS where ITEMID='"+s1+"'");
            ResultSet rs=ps.executeQuery();
            String in="";
            while(rs.next())
             {
                 session.setAttribute("iid",rs.getString(1));
                 session.setAttribute("iimage",rs.getString(2));
                 session.setAttribute("iprice",rs.getString(3));
                 session.setAttribute("iname",rs.getString(4));
                 session.setAttribute("itype",rs.getString(5));
                 in=rs.getString(4);
              %>
              <table class="tab">
                  <tr>
                      <td>
                          <img src="images/<%=rs.getString(2)%>" alt="Food Image" height="350" width="500" />
                          <hr>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <button type="submit" class="btn btn-primary" id="but1" name="b1" value="Order Item">Order Item</button>
                          <hr>
                      </td>
                  </tr>
                   <tr>
                      <td>
                          <b>Item Name : <%=rs.getString(4).toUpperCase() %></b>
                          <hr>
                      </td>
                  </tr>
                   <tr>
                      <td>
                          <b>Item Price : <%=rs.getString(3) %></b>
                          <hr>
                      </td>
                  </tr>
                   <tr>
                      <td>
                          <b>Cuisine Type: <%=rs.getString(5).toUpperCase() %>  </b>
                          <hr>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <b>Ingredient: <%=rs.getString(6) %>  </b>
                          <hr>
                          <div id="comm" class="form-inline">
                           
                          <h4> Comments:</h4><input maxlength="100" type="text" name="ta1" onkeyup="counts()" class="form-control" id="nameField">
                          <button type="submit" value="post" class="btn btn-primary" name="b2">Post</button><div id="counts" ></div>
                          </div>
                          <%
                          ps1=con.prepareStatement("Select Name,Comments from review where ITEMname like'%"+in+"%'");
                          //out.println(in);
                          ResultSet rs1=ps1.executeQuery();
                          out.println("<hr><b>Previous Comments</b><hr>");
                          while(rs1.next())
                          {
                              
                              out.println("<h4>"+rs1.getString(1)+": </h4>"+rs1.getString(2)+"<hr>");
                          }
                          %>
                          
                          Copyright @ EECS 746 
                      </td>
                  </tr>
              </table>
            <%
            }
            %>
            
            
        </form>
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    </body>
</html>

