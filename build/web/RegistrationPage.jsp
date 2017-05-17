<%-- 
    Document   : RegistrationPage
    Created on : 30 Dec, 2016, 7:25:02 PM
    Author     : Nikhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.questions.*"
%>

<!doctype html>
<html>
    <head>
        <title>Student Registration Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
    </head>
    <body>
        <div class="container" style="height:50px;">
            <div style="float:left;">
                <center><img src="exam.jpg"></center>
            </div>
        </div>
        
        <hr>
        
        <br><br>
        <br><br>
        <br><br>
        
        <div class="container" style="width:300px; height:200px; border: 1px ;">
            <h1 style="color:blue;"><center>Registration</center></h1><br>
            <form action="Registration.jsp" method="post">

                <input type="hidden" name="rid" id="un" value="<%=RegistrationId.getRid()%>">
                
                <div class="form-group">
                    <label for="un">Name:</label>
                    <input type="text" name="uname" id="un" class="form-control">
                </div>
    
                <div class="form-group">
                    <label for="pw">Password:</label>
                    <input type="password" name="password" id="pw" class="form-control">
                </div>
                
                <div class="form-group">
                    <label for="em">Email:</label>
                    <input type="email" name="email" id="em" class="form-control">
                </div>
                
                <div class="form-group">
                    <label for="gn">Gender Male/Female:</label>
                    <input type="text" name="gender" id="gn" class="form-control">
                </div>
                    
                <div class="form-group">
                    <label for="ad">Address:</label>
                    <input type="text" name="address" id="ad" class="form-control">
                </div>
                
                <div class="form-group">
                    <label for="p">Phone No.:</label>
                    <input type="text" name="phone" id="p" class="form-control">
                </div>
                
                <center><button type="submit" class="btn btn-default">Submit</button></center>
            </form>
        </div>

<br><br><br>
    </body>
</html>
