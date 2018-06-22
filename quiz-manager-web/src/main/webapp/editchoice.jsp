<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--
/**
 * <h3>Description</h3>
 * <p>Quiz Manger web-app editchoice.jsp</p>
 *
 * <h3>Usage</h3>
 * <p>Display editables for choices
 * </p>
 *
 * @since $${1.0.0}
 * @see See also $${http://thomas-broussard.fr/}
 * @author ${Qiao & Hao}
 *
 * ${jsp}
 */
-->

<%
//Panel to edit choices
//method to get param
//to get the seleted thie i is choice.id!!
//int i;
//String question = （String）session.getAttribute(String.valueof(i));
//button create action=choicecreate
//button update action=choiceupdate
//button delete action=choicedelete
//form choice content id getchoice
//form choiceID的id getchoiceid
//form choice valid id getchoicevalid
//form choice order id getchoiceorder
//upper drag download getselectchoiceid
%>

<head>
   
    <title>
        Edit Choices
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
		<h1>Choice Panel</h1>
		<span></span>
		</div>
	
		<div class="content">
		<select name="choice_id" type="text" class="input" id="getselectchoiceid">
		<%
		int choice_number = 4; //the number of choices for each question
 		for(int i=0;i<choice_number;i++){
 			%><option type="text" class="input username" value="choice_id">${i}</option> 
 			<%
 			}
 		%>
		</select>

		
		<label id="ChoiceDisplay" name="question" type="text" class="input username">${（String）session.getAttribute(String.valueof(i))}</label>

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
		<input type="submit" class="button" name="edit" value="Delete" class="register" id="choicedelete"/>
		</div>
	
	</form>

	<form name="createform" class="login-form" action="checkRegister" method="post">
	
		<div class="header">
		<h1>EditChoice</h1>
		<span></span>
		</div>
	
		<div class="content">
		<select name="choice_id" type="text" class="input" id="getchoiceid">
		<%
 		for(int i=0;i<4;i++){
 			%><option type="text" class="input username" value="choice_id">${i}</option> 
 			<%
 			}
 		%>
		</select>
		<input name="choice" type="text" class="input username" placeholder="*Choice Content" id="getchoice"/>
		<br><br>
        <input name="order" type="text" class="input username" placeholder="Order" id="getchoiceorder"/>
		<select name="question" type="text" class="input username" id="getchoicevalid">
		<option type="text" class="input username" value="1">True</option> 
  		<option type="text" class="input username" value="0">False</option> 
		</select>
		</div>

		<div class="footer">
        <input type="submit" class="button" name="submit" value="Create" class="register" action="choicecreate" />
		<input type="submit" class="button" name="submit" value="Update" class="register" action="choiceupdate"/>
		</div>
	
	</form>

</div>
<div class="gradient"></div>


</body>
</html>
