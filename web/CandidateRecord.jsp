<%-- 
    Document   : CandidateRecord
    Created on : 19 Dec, 2016, 11:35:57 AM
    Author     : Nikhil
--%>

<%@page import="com.questions.QuestionList"%>
<%@page import="org.hibernate.*"
        import="org.hibernate.cfg.*"
        import="java.util.*"
        import="com.mapping.*"
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    Session sess ;
    Transaction t ;
    Student user ;
    String id ;
    String name ;
%>

<%
 HttpSession ses = request.getSession(false);
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
        <title>Candidate Record</title>
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
        
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    
                </div>
                <div class="col-md-4">
                    <div class="panel panel-primary" style="width:500px">
                        <div class="panel-heading">
                            <h2 class="text-capitalize"><%=user.getName()%></h2>
                        </div>
                        <br>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="user_image/s1001.jpg" alt="profile_image" class="img-circle img-responsive">
                                </div>

                                <div class="col-md-8">
                                    <p>Registration Id: <%=user.getRid()%></p><hr>
                                    <p>Email : <%=user.getEmail()%></p><hr>
                                    <p>Gender : <%=user.getGender()%></p><hr>
                                    <p>Address: <%=user.getAddress()%></p><hr>
                                    <p>Phone No. : <%=user.getPhone()%></p><hr>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
        <br>
        
        
<%
    query = sess.createQuery("from Examination where rid='"+id+"'");
    List<Examination> list1 = query.list();
    Iterator<Examination> itr1 = list1.iterator();
    if(itr1.hasNext())
    {
%>        
        <form action="InstructionPage.jsp">
            <center><button class="btn btn-lg btn-primary">Take Exam </button></center>
        </form>
<%        
    }
%>
       
<br><br><br>
    </body>
    
    
