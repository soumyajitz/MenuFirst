<%-- 
    Document   : Insertitems
    Created on : Apr 25, 2015, 6:24:33 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


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
                        <li class="active"><a href="Admin.jsp">Admin Home</a></li>                                              
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">About <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Board of Members</a></li>
                                    <li><a href="#">Developers Team</a></li>
                                    <li><a href="#">Designing Team</a></li>
                                    <li class="divider"></li>
   
                                </ul>
                            </li>
                     
                    </ul>
                </div>
            </div>
        </div>
        <form method="post" action="Inserted.jsp">
            <div class="form-group"><label class="l1">ItemId<input type="text" name="t1" class="form-control" id="nameField"  /></label></div>
            <div class="form-group"><label class="l1">ItemImage<input type="text" name="t2" class="form-control" id="nameField"  /></label></div>
            <div class="form-group"><label class="l1">ItemPrice<input type="text" name="t3" class="form-control" id="nameField"  /></label></div>
            <div class="form-group"><label class="l1">Itemname<input type="text" name="t4" class="form-control" id="nameField"  /></label></div>
            <div class="form-group"><label class="l1">Itemtype<input type="text" name="t5" class="form-control" id="nameField"  /></label></div>
            <div class="form-group"><label class="l1">Ingredients<textarea class="form-control" name="t6" id="nameField" /></textarea></label></div>
            <button type="submit" class="btn btn-primary" id="b1">Insert into DB</button>   
        </form>
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </body>
</html>
