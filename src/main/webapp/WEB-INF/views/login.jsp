<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link type="text/css" rel="stylesheet" href="<c:url value="/resources/styles/general.css" />"  media="screen,projection"/>
  <link type="text/css" rel="stylesheet" href="<c:url value="/resources/styles/form.css" />"  media="screen,projection"/>
 <title><spring:message code="login.pagetitle"/></title>
</head>
<body>
	<header>
		<p class="heading"><spring:message code="logo"/></p>
		<nav>
			<ul>
				<li><a class="nav-element" href="<c:url value="/"/>"><spring:message code="back"/></a></li>
			</ul>
		</nav>
	</header>
	<div id="sisalto">  
	<div class="keskita">
	<h1><spring:message code="login.heading"/></h1>
	<c:if test="${not empty loginerror}">
		<p class="Error"><spring:message code="login.fail"/></p>
	</c:if>
	<c:if test="${not empty loggedout}">
		<p class="Info"><spring:message code="logout.success"/></p>
	</c:if>
	    <form action="<c:url value="j_spring_security_check" />" method="post">
			<spring:message code="login.username"/> <input style="margin-bottom: 20px" type='text' name='j_username' value=''><br>
			<spring:message code="login.password"/> <input type='password' name='j_password' /><br>
			<button class="button" type="submit"><spring:message code="login.submit"/></button>
		</form>
	</div>
</div>
</body>
</html>