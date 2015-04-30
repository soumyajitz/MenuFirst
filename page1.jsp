
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DBMS PROJECT</title>
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
                        <li><a href="Contact.jsp">Contact</a></li>
                        <li><a href="Admin.jsp">Admin</a></li>
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
            
            
            <% //Carousel %>
            <div id="bestCarsCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
                    <ol class="carousel-indicators">
                    <li data-target="#bestCarsCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#bestCarsCarousel" data-slide-to="1"></li>
                    <li data-target="#bestCarsCarousel" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                    <div class="item active">
                    <img src="images/chinese.jpg" height=550 width=800 />
                    <div class="carousel-caption">
                    <h3>Chinese Continental</h3>
                    <p>Chinese Food</p>
                    </div>
                    </div>
                    <div class="item">
                    <img src="images/italian.jpg" height=550 width=800>
                    <div class="carousel-caption">
                    <h3>Italian</h3>
                    <p>Pizza</p>
                    </div>
                    </div>
                    <div class="item">
                        <img src="images/mexican.jpg" height=550 width=800>
                    <div class="carousel-caption" >
                    <h3>Mexican</h3>
                    <p>Chipotle Grill </p>
                    </div>
                    </div>
                    </div>
            <!-- Controls -->
                    <a class="left carousel-control" href="#bestCarsCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#bestCarsCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
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
