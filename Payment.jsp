<%-- 
    Document   : Payment
    Created on : Apr 19, 2015, 8:08:58 PM
    Author     : Administrator
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.activation.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.PreparedStatement"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #search1{margin-left: 370px;}
            #nameField{width:500px;}
            .l1{margin-left:350px;}
            #b1{margin-left: 1100px;}
            
        </style>
        <% 
            String iprice=(String)session.getAttribute("iprice");
            String cutprice=iprice.substring(1, 5);
            Double price=Double.parseDouble(cutprice);
            String pr=price.toString();
            //out.println("Price is:"+price);
        %>
        <script type="text/javascript">
            function abc()
            {
                var a=document.form1.sel1.value;
                if(a=="#")
                {
                    document.getElementById("total").innerHTML="";
                }
                else
                document.getElementById("total").innerHTML="<b>"+a*<%=price%>+"</b>";
            }
        </script>
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
        <form method="post" name="form1" action="Confirm.jsp">
            <%
                String name=(String)session.getAttribute("name");
                String iname=(String)session.getAttribute("iname");
                iname=iname.toUpperCase();
                String sub=name.substring(0, 4);
                Random r=new Random();
                int ra=r.nextInt(99);
                int la=r.nextInt(499);
                String orderid=ra+sub+la;
                session.setAttribute("oid",orderid);
      
                
            %>
            
            <table class="table table-striped">
                <tr>
                    <th>&nbsp;&nbsp;Order Id&nbsp;&nbsp;</th>
                    <th>&nbsp;&nbsp;Item Name&nbsp;&nbsp;</th>
                    <th>&nbsp;&nbsp;Quantity&nbsp;&nbsp;</th>
                    <th>&nbsp;&nbsp;Total Price&nbsp;&nbsp;</th>
                </tr>
                <tr>
                <h4>
                    <td><b><%=orderid%></b></td>
                    <td><b><%=iname%></b></td>
                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;
                        <select name="sel1" onchange="abc()">
                            <option value="#">Select Qty </option>
                            <option value="1">1(One)</option>
                            <option value="2">2(Two)</option>
                            <option value="3">3(Three)</option>
                            <option value="4">4(Four)</option>
                            <option value="5"> 5(Five)</option>
                        </select>
                        </b>&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td id="total"></td>
                </h4>
                </tr>
            </table>
           
                <hr>
                
                <button type="submit" class="btn btn-primary" id="b1" name="b1" value="Confirm Order">Confirm Order</button>
        </form>
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </body>
</html>
