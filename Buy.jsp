<%-- 
    Document   : Buy
    Created on : Apr 19, 2015, 5:46:19 PM
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
<%@page import="item.buyItem;"%>

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
        </style>
        <script>
            function check(){
                var a=document.f1.t1.value.length;
                if(a<8)
                {
                alert("Enter Proper Length(>8)");
                return false;
            }
            
            }
            function rollout(v)
            {
                var x=v.value;
                if(x=="pp")
                {
                    document.getElementById("pay").innerHTML="Enter Your Paypal ID: <input type='text' name='t1' class='form-control' id='nameField' placeholder='(abc)-xxxx' /><br> <button type='submit' class='btn btn-primary' id='b1' name='b1' value='Pay'>Pay Now</button>";
                }
                else if(x=="dd")
                {
                    document.getElementById("pay").innerHTML="Enter Your Cheque Number:<input type='text' name='t1' class='form-control' id='nameField' placeholder='Enter 8 digit DD Number' /><br> <button type='submit' class='btn btn-primary' id='b1' name='b1' value='Pay'>Pay Now</button>";
                }
                else if(x=="cc")
                {
                    document.getElementById("pay").innerHTML="Enter Your Card Number:<input type='text' name='t1' placeholder='xxxx-xxxx-xxxx-xxxx' class='form-control' id='nameField' /><br><button type='submit' class='btn btn-primary' id='b1' name='b1' value='Pay'>Pay Now</button>";
                }
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
        <form method="post" action="Payment.jsp" name="f1" onsubmit="return check()">
            <%
            String codVal=(String)session.getAttribute("iid");
            out.print(codVal);
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","soumyajit");
            PreparedStatement ps;
                String iname=(String)session.getAttribute("iname");
                String iprice=(String)session.getAttribute("iprice");
                String name1=(String)session.getAttribute("name");
                if(request.getParameter("b1")!=null)
                {
                
                ArrayList<buyItem> aw=new ArrayList<buyItem>();
            %>
            <fieldset>
                <legend>Order Item</legend>
                <table>
                    <tr>
                        <td>ItemName : </td> <td><%=iname.toUpperCase() %></td>
                    </tr>
                    <tr>
                        <td>ItemPrice : </td> <td><%=iprice.toUpperCase() %></td>
                    </tr>
                    <tr>
                        <td>Payment Method - </td> 
                        <td>                      
                                Paypal : <input type="radio" name="r1" value="pp" onclick="rollout(this)">
                                Cheque/DD:<input type="radio" value="dd" name="r1" onclick="rollout(this)">
                                Card:<input type="radio" name="r1" value="cc" onclick="rollout(this)">
                        </td>
                    </tr>
                    
                </table>
            </fieldset>
                    <hr>
                    <div id="pay">
                        
                    </div>
            <%}
                else if(request.getParameter("b2")!=null)
                {
                   
                    String maile=(String)session.getAttribute("maile");
                    String comms=request.getParameter("ta1");
                    ps=con.prepareStatement("insert into  review values(?,?,?)");
                    ps.setString(1,name1);
                    ps.setString(2,comms);
                    ps.setString(3,iname);
                    int i=ps.executeUpdate();
                    if(i>0)
                    {
                        %>
                        <script type="text/javascript">
                           // alert("Comment Posted:<%=codVal%>");
                            location.href="Features.jsp?code=<%=codVal%>";
                        </script>
                    <%
                    }
                    else  
                    {
                        out.println("Sorry Error while posting comment: Try again");
                        response.sendRedirect("Features.jsp?code="+codVal);
                    }
                    
                    
    }%>
        </form>
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </body>
</html>
