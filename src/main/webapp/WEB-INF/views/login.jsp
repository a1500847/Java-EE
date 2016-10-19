<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link type="text/css" rel="stylesheet" href="<c:url value="/resources/styles/general.css" />"  media="screen,projection"/>
 <title>Äänilevykirjasto</title>
</head>
<body>
	<h1>Kirjaudu sisään</h1>
	   
	    <form action="<c:url value="j_spring_security_check" />" method="post">
			Käyttäjänimi: <input type='text' name='j_username' value=''>
			Salasana: <input type='password' name='j_password' />
			&nbsp; <button type="submit">Kirjaudu</button>
		</form>

	
	<c:if test="${not empty loginerror}">
		<p class="Error">Sisäänkirjautuminen epäonnistui.</p>
	</c:if>
	<c:if test="${not empty loggedout}">
		<p class="Info">Uloskirjautuminen onnistui</p>
	</c:if>
	
	<a href="<c:url value="/"/>">Takaisin etusivulle</a>

</body>
</html>