<%-- 
    Document   : Registration
    Created on : 27 Apr, 2017, 12:26:36 PM
    Author     : Nikhil
--%>

<%@page import="com.mapping.Examination"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.mapping.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String rid = request.getParameter("rid");
    String name = request.getParameter("uname");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    String mobile = request.getParameter("phone");
    
    Student student = new Student(rid, password, name, email, gender, address, mobile, 0) ;
    Examination examination = new Examination() ;
    examination.setRid(rid);
    
    Session ses = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
    Transaction t = ses.beginTransaction();
    ses.persist(student);
    ses.persist(examination);
    t.commit();
    ses.close();
    
    HttpSession sess = request.getSession();
    sess.setAttribute("id", rid);
    response.sendRedirect("CandidateRecord.jsp");
%>
