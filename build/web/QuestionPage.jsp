<%-- 
    Document   : QuestionPage
    Created on : 19 Dec, 2016, 11:52:18 AM
    Author     : Nikhil
--%>

            
<%@page import="org.hibernate.*"
        import="org.hibernate.cfg.*"
        import="java.util.*"
        import="com.questions.*"
        import="com.mapping.*"
%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    int n = QuestionList.getNo_of_Question() ;
    int i = 1 ;
    Questionbank q ;
    HttpSession ses ;
%>

<%!
    Session sess ;
    Transaction t ;
    Student user ;
    String id ;
    String name ;
    int qn ;
%>

<%
   ses = request.getSession(false);
   id =(String) ses.getAttribute("id");
%>

<%
    sess = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
    t = sess.beginTransaction();
    
    Query query = sess.createQuery("from Student where rid='"+id+"'");
    List<Student> list = query.list();
    Iterator<Student> itr = list.iterator();
    user = itr.next();
%>
<!doctype html>
<html>
    <head>
        <title>Question page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <script>
            function startTimer(duration, display) 
            {
                var timer = duration, minutes, seconds;
                setInterval(function () 
                {
                    minutes = parseInt(timer / 60, 10);
                    seconds = parseInt(timer % 60, 10);

                    minutes = minutes < 10 ? "0" + minutes : minutes;
                    seconds = seconds < 10 ? "0" + seconds : seconds;

                    display.textContent = minutes + ":" + seconds;

                    if (timer>0) 
                    {
                        --timer ;
                    }
                    
                    if(timer==0)
                    {    
                        document.getElementById("timeid").submit();
                    }
                }, 1000);
            }

            window.onload = function () 
            {
                var Minutes = 60 * 1,
                    display = document.querySelector('#time');
                startTimer(Minutes, display);
            };
        </script>


    </head>
    <body>
        <div class="container-fluid" style="margin-top: 10px;">
            <div class="row">
                <div class="col-md-6">
                    <p><strong>Registraion Id: <%=user.getRid()%></strong></p>
                    <p class="text-capitalize"><strong>Name: <%=user.getName()%></strong?</p>
                </div>
                <div class="col-md-3">
                    
                </div>
                <div class="col-md-3" id="time">
                    
                </div>
            </div>
        </div>
                
        <hr style="border-width:5px ; border-color: blue;">      
        
        
        <br>    
        
        
        <div class="container-fluid"> 
            <div class="row">
                <div class="col-md-2" style="padding: 15px 15px 15px 15px;">

                    <%
                        while(i<=n)
                        {
                    %>

                    <div><form action="Question.jsp" target="frame"><button type="submit" name="qno" class="btn btn-lg btn-default" id="b+<%=i%>" value="<%=i%>" style="float:left; border-radius: 25px;"><%=i%></button></form></div>

                    <%
                            i++ ;   
                        }
                        i = 1 ;
                    %>
                </div>
           
        
                <div class="col-md-10">
                    <iframe name="frame" src="Question.jsp" width="100%" height="450px" frameborder="0">
                    </iframe>


                </div>
            </div>
        </div>
            
        
        
        
        <div class="container">
            <div class="row">  
                <div class="col-md-6">
                    <form action="Question.jsp" target="frame">
                        <button name="direction" class="btn btn-primary" value="previous">Previous</button>
                        <button name="direction" class="btn btn-primary" value="next">Next</button>
                    </form>
                </div>
                
                <div class="col-md-3"><form id="timeid" action="Result.jsp"><button class="btn btn-primary">Submit</button></form></div>
            </div>
        </div>
           
<br><br><br>      
    </body>
    
    
</html>