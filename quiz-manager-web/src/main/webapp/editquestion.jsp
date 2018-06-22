<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
//Get the number of questions
//int number =(int) session.getAttribute("questionsnumber");
//get the question, the i is question.id
//int i;
//String question = （String）session.getAttribute(String.valueof(i));
//
//button create action questioncreate
//button update action questionupdate
//button delete action questiondelete
//button edit choice action jumpchoice
//input  question content id is getquestion
//input  questionID id is getquestionid
//input  question type id is getquestiontype

//dragdownlist questionID id is getselectquestionid
%>
<head>
   
    <title>
        Edit Question Panel
    </title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>

<div id='cssmenu'>
<ul>
   <li class=''><a href='${pageContext.request.contextPath}'><span>Quiz</span></a></li>
   <li><a href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
   <li><a href='#'><span>Contact us</span></a></li>
</ul>
</div>

<div id="wrapper">
		<form name="editform" class="login-form" action="checkRegister" method="post">
	
		<div class="header">
		<h1>Question Panel</h1>
		<span></span>
		</div>
	
		<div class="content">
		<select name="question_id" type="text" class="input" id="getselectquestionid">
		<%
		int number =(int) session.getAttribute("questionsnumber");
 		for(int i=0;i<number;i++){
 			%><option type="text" class="input username" value="choice_id">${i}</option> 
 			<%
 			}
 		%>
		</select>

		
		<label id="QuestionDisplay" name="question" type="text" class="input username">${(String)session.getAttribute(String.valueof(i))}</label>

		<script type="text/javascript">
			var i=0;
			if (i==0){
				document.getElementByname("QuestionDisplay").placeholder="*Question Content";
			}
			else
				;
		</script>
		<br><br>
		</div>


		<div class="footer">
        <input type="submit" class="button" name="edit" value="Delete" class="register" action="questiondelete"/>	
		<input type="submit" class="button" name="edit" value="View|Edit Choices" class="jumpchoice" />
		</div>
	
	</form>

	<form name="createform" class="login-form" action="checkRegister" method="post">
	
		<div class="header">
		<h1>Create Question</h1>
		<span></span>
		</div>
	
		<div class="content">
		<select name="question_id" type="text" class="input" id="getquestionid">
		<%
		number =(int) session.getAttribute("questionsnumber");
 		for(int i=0;i<number+1;i++){
 			%><option type="text" class="input username" value="choice_id">${i}</option> 
 			<%
 			}
 		%>
		</select>

		<input name="question" type="text" class="input username" placeholder="*Question Content" id="getquestiontype"/>
		<br><br>
		<select name="question" type="text" class="input username" id="getselectquestionid">
		<option type="text" class="input username" value="valeur1">MCQ</option> 
  		<option type="text" class="input username" value="valeur2">Associative</option> 
        <option type="text" class="input username" value="valeur3">Open</option> 
		</select>
		</div>

		<div class="footer">		
		<input type="submit" class="button" name="submit" value="Create" class="register" action="questioncreate"/>
        <input type="submit" class="button" name="submit" value="Update" class="register" action="questionupdate"/>
		</div>
	
	</form>

</div>
<div class="gradient"></div>


</body>
</html>
