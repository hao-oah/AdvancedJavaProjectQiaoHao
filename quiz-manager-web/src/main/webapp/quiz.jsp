<%@ page language="java" import="co.edureka.quiz.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--
/**
 * <h3>Description</h3>
 * <p>Quiz Manger web-app quiz.jsp</p>
 *
 * <h3>Usage</h3>
 * <p>Display quiz instance
 * </p>
 *
 * @since $${1.0.0}
 * @see See also $${http://thomas-broussard.fr/}
 * @author ${Qiao & Hao}
 *
 * ${jsp}
 */
-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quiz</title>
 <style type="text/css">
body {
	background: #fff;
}
</style>

</head><br/>
<body>
<div style="position:absolute;left:50px;top:20px">
<%
//get the number of questions
//int number =(int) session.getAttribute("questionsnumber");
//Get question and i the id whithin session but i is not question.id
//String question = （String）session.getAttribute(“question”+i);
//Get relative options, i is the id within session but i is not question.id;
//this case, j is the coresponding session id. but j is not MCQChoice.id. e.g, "question"+0+"choice"+0+"title" is the 1st of 1st
//same for valid 
//int j;
//String choice = （String）session.getAttribute("question"+i+"choice"+j+"title");
//String choice_valid = （String）session.getAttribute("question"+i+"choice"+j+"valid"); 
// here is the question selected into the exam page.
%>

</div>


 <div style="position:absolute;width:1000px;padding:25px;
  height: 200px;border: 1px solid green ;left:100px;top:60px">
<br/><br/>
<form action="exam" method="post" >
<!-- <c:forEach var="choice" items="${choice}" varStatus="counter">
<input type="radio" name="answer" value="${choice}" >${choice}  <br/>
 </c:forEach> <br/> -->


 <%
  int result =0;
 	int number =(int) session.getAttribute("questionsnumber");
  	for(int i=0;i<number;i++)
  	{	
   		String question = （String）session.getAttribute(“question”+i);
		%>
 		<label type="text" name="question" value="question_centent" />{$question}
 		<%
 		for(int j=0;j<4;j++){
 			choice = （String）session.getAttribute("question"+i+"choice"+j+"title");
 		 %>
		<input type="radio" name="count" value="${j}" />${choice}
		<%
    result += choice = （int）session.getAttribute("question"+i+"choice"+j+"valid");
		}
 		%>
 	<%
 	}
 %>

<br></br>

<input type="submit" name="action" value="Submit" />

</form>
</div>


</body>
<body id="result container">

<div style="position:absolute;left:500px;top:70px">
<h3 align="center">Quiz Result</h3>
<table border=1>
  <tr>
     <td class="head">
        Quiz :
      </td>
      <td>
      <%
        int number =(int) session.getAttribute("questionsnumber");
        for(int i=0;i<number;i++)
        { 
        for(int m=0;m<result/4;m++){
        if (m==j)
        %>
        <label type="radio" name="count" value="${j}" />The result is ${m}
        <%
        }
        %>
        <%
        }
        %>
        </td>
      </tr>
    </table>
</div>
</body>
</html>