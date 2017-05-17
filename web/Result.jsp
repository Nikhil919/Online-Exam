<%-- 
    Document   : Result
    Created on : 21 Dec, 2016, 1:40:23 PM
    Author     : Nikhil
--%>


<%@page import="org.hibernate.*"
        import="org.hibernate.cfg.*"
        import="java.util.*"
        import="com.mapping.*"
        import="com.questions.*"
%>

<%!
    int res  ;

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
    Question q ;
    List<Question> qlist = QuestionList.getList();
    Iterator<Question> itr2 = qlist.iterator();
    res = 0 ;
    while(itr2.hasNext())
    {
        q = itr2.next();
        if(q.getAnswer().equals(q.getUanswer()))       
        {
            ++res ;
        }
        q.setUanswer(null);
    }
%>

<%
    sess = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
    t = sess.beginTransaction();
    
    Query query = sess.createQuery("update Student set score=:s where rid=:i");
    query.setParameter("s",(Integer)res);
    query.setParameter("i",id);
    query.executeUpdate();
    t.commit(); 
    sess.close();
%>

<!doctype html>
<html>
    <head>
        <title>Result</title>
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
        
        
        <center>
            <h1 style="color:blue;">Result</h1><br>
            <br>
            <p>
                <strong>
                    Marks : <%=res%>
                </strong>
            </p>
        </center>

<br><br><br>
    </body>
</html>