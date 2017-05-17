<%-- 
    Document   : answer.jsp
    Created on : 20 Dec, 2016, 7:55:46 PM
    Author     : Nikhil
--%>


<%@page import="com.questions.*"
        import="javax.servlet.http.*"
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! Question q ;    %>

<%
    String ans = request.getParameter("answer");
    int qno = Integer.parseInt(request.getParameter("quesno"));
    q = QuestionList.getQuestion(qno);
    q.setUanswer(ans);
    response.sendRedirect("Question.jsp");
%>