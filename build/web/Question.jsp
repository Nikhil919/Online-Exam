<%-- 
    Document   : Question
    Created on : 20 Dec, 2016, 7:20:08 PM
    Author     : Nikhil
--%>

<%@page import="com.questions.*"
        import="java.util.*"
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>

<%!
    static int i=1 ;
    static int x=0 ;
    static int n = QuestionList.getNo_of_Question() ;
    String aa ;
%>


<%
    if(request.getParameter("qno")!=null)
    {
        i = Integer.parseInt(request.getParameter("qno"));
    }
    if(request.getParameter("direction")!=null)
    {
        String str = request.getParameter("direction");
        if(str.equals("previous"))
        {
            if(i>1)
            {
                i-- ;
            }
        }
        else if(str.equals("next"))
        {
            if(i<n)
            {
                i++ ;
            }
        }
    }
    Question q = QuestionList.getQuestion(i);
    
%>

<div class="question">
    <p><%=q.getQid()%> <%=q.getQuestion()%></p>
    
    <form action="answer.jsp">
        <input type="hidden" name="quesno" value="<%=i%>">
        <h4><input type="radio" id="radio1" name="answer" value="ans1"><%=q.getAns1()%></h4>
        <h4><input type="radio" id="radio2" name="answer" value="ans2"><%=q.getAns2()%></h4> 
        <h4><input type="radio" id="radio3" name="answer" value="ans3"><%=q.getAns3()%></h4>
        <h4><input type="radio" id="radio4" name="answer" value="ans4"><%=q.getAns4()%></h4>
    </form>
</div>
    
<script>    
    $('input[name=answer]').change(function(){
        $('form').submit();
    });
</script>

<script>

<%
    if(q.getUanswer()!=null)
    {
        aa = q.getUanswer();
        if(aa.equals("ans1"))
        {   %>
            document.getElementById("radio1").checked = true;
     <%   }
        else if(aa.equals("ans2"))
        {   %>
            document.getElementById("radio2").checked = true;
     <%   }
        else if(aa.equals("ans3"))
        {   %>
            document.getElementById("radio3").checked = true;
     <%   }
        else if(aa.equals("ans4"))
        {   %>
            document.getElementById("radio4").checked = true;
     <%   }
    }
%>
    
</script>