<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/styles/general.css" />"
	media="screen,projection" />
<title>Äänilevykirjasto</title>
</head>
<body>
	<div id="header">

		<sec:authorize var="loggedIn" access="hasRole('ROLE_ADMIN')" />
		<c:choose>
			<c:when test="${loggedIn}">
	        Kirjautuneena: <sec:authentication
					property="principal.username" />
				<a href="<c:url value="/admin/create"/>">Adminsivulle</a>
				<a href="<c:url value="j_spring_security_logout" />">Kirjaudu
					ulos</a>
			</c:when>
			<c:otherwise>
				<a href="<c:url value="login"/>">Kirjaudu</a>
			</c:otherwise>
		</c:choose>

		<c:if test="${not empty loginerror}">
			<p class="Error">Sisäänkirjautuminen epäonnistui.</p>
		</c:if>
		<c:if test="${not empty loggedout}">
			<p class="Info">Uloskirjautuminen onnistui</p>
		</c:if>


	</div>
	<div id="sisalto">
	<h1>Äänilevyt</h1>
	<table class="levylista">
		<c:forEach items="${levyt}" var="aanilevy">
			<tr class="levy">
				<td><img src="${aanilevy.imgLocation}" onerror="this.src='images/ic_album_white_48dp_2x.png'"></td>
				<td><p>
					Albumin nimi: <br>
					Artisti: <br>
					Julkaisuvuosi: <br>
				</p></td>
				<td><p>
					${aanilevy.title}<br>
					${aanilevy.artist}<br>
					${aanilevy.year}
				</p></td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>