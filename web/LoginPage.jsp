<%-- 
    Document   : LoginPage
    Created on : 19 Dec, 2016, 10:04:52 AM
    Author     : Nikhil
--%>

<%@page import="org.hibernate.*"
        import="org.hibernate.cfg.*"
        import="java.util.*"
        import="com.mapping.*"
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    HttpSession ses ;
    Session sess ;
    Transaction t ;
    Student stud ;
    String id ;
    String pass ;
%>

<%
    id = request.getParameter("id");
    pass = request.getParameter("password");
    ses = request.getSession();
    sess = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
    t = sess.beginTransaction();
    Query query = sess.createQuery("from Student where rid='"+id+"'");
    List<Student> list = query.list();
    Iterator<Student> itr = list.iterator();
    
    if(!itr.hasNext())
    {
        response.sendRedirect("index.jsp");
    }
    
    if(itr.hasNext())
    {   
        stud = itr.next();
        if(pass.equals(stud.getPassword()))
        {
            ses.setAttribute("id",id);
            response.sendRedirect("CandidateRecord.jsp");
        }
    
        else
        {
            response.sendRedirect("index.jsp");
        }
    }
    t.commit();
    sess.close();
%>