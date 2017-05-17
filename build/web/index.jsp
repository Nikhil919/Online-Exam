<%-- 
    Document   : index
    Created on : 19 Dec, 2016, 10:04:04 AM
    Author     : Nikhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <title>Student Login Page</title>
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
            
            <div style="float:right; margin-top: 15px;">
                <form action="RegistrationPage.jsp">
                    <center><button type="submit" class="btn btn-primary">Register</button></center>
                </form>        
            </div>
        </div>

        <hr>
        
        <br><br>
        <br><br>
        <br><br>
        
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2">
                    
                </div>
                
                <div class="col-md-4">
                    <img src="bookstack.png" height="">
                </div>
                
                <div class="col-md-2">
                    
                </div>
                
                <div class="col-md-3">
                    <h1><center>Login</center></h1><br>
                    <form action="LoginPage.jsp" method="post">
                        <div class="form-group">
                            <label for="rid">Registration Id:</label>
                            <input type="text" name="id" class="form-control" id="rid" placeholder="Enter Registration Id" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="pwd">Password:</label>
                            <input type="password" name="password" class="form-control" id="pwd" placeholder="Enter password" required>
                        </div>

                        <br>
                        
                        <center><button type="submit" class="btn btn-default">Submit</button></center>
                    </form>
                </div> 
                
                <div class="col-md-1">
                    
                </div>
                
            </div>
        </div>
        
        
        
        <br>
        <br>
        <br>
        <br>

        
       
    </body>
</html>
