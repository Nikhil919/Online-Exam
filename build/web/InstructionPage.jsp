<%-- 
    Document   : InstructionPage
    Created on : 19 Dec, 2016, 11:07:36 AM
    Author     : Nikhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

             
<!doctype html>
<html>
    <head>
        <title>Instruction</title>
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
        
        <div class="container">
            <h1 style="color: blue;"><center>Intoduction</center></h1>
            <br>
            <p>1. Read the questions and instructions very carefully before you start to ensure you know exactly what's required.</p>
            <p>2. Exam contains muliple choice questions and only have one right answer.</p>
            <p>3. Exam contains 10 question.</p>
            <p>4. You have 5 minutes to complete the exam.</p>
            <p>5. Each question is of 4 marks each.</p>
            <p>6. There is no negative marking, so attempt all questions.</p>
        </div>
        
        <br>
        <br>
        <center>
            <form action="QuestionPage.jsp">
                <button class="btn btn-primary btn-lg">Start Exam</button>
            </form>
        </center>
        
<br><br><br>
    </body>
</html>
      
        

