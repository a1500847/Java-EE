<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/styles/general.css" />" media="screen,projection" />
<title><spring:message code="admin.view.title"/></title>
</head>
<body>

<header>
		<p class="heading"><spring:message code="logo"/></p>
		<nav>
			<ul>
			<sec:authorize var="loggedIn" access="hasRole('ROLE_ADMIN')" />
			<c:choose>
				<c:when test="${loggedIn}">
					<li><a class="nav-element" href="<c:url value="../../"/>"><spring:message code="back"/></a></li>
					<li><p class="nav-element"><spring:message code="user"/> <sec:authentication property="principal.username" /></p></li>
					<li><a  class="nav-element"href="<c:url value="../j_spring_security_logout" />"><spring:message code="logout"/></a></li>
				</c:when>
				<c:otherwise>
					<li><a class="nav-element" href="<c:url value="login"/>"><spring:message code="login"/></a></li>
				</c:otherwise>
			</c:choose>
			<li><div id="langsel" class="nav-element">
				<a href="?lang=en">en</a> | <a href="?lang=fi">fi</a></div>
			</li>
			</ul>
		</nav> 
	</header>

	<div id="sisalto">
		<h1><spring:message code="admin.view.heading"/></h1>
		<p class="Info"><spring:message code="admin.view.info"/></p>
		<img src="../../<c:out value="${aanilevy.imgLocation}"/>" alt="kansikuva" style="width: 180px; float: left;">
		
		<div style="margin: 30px; float:left;">
			<p><spring:message code="admin.view.title"/><br>${aanilevy.title}<br><br>
			<spring:message code="admin.view.artist"/><br>${aanilevy.artist}<br><br>
			<spring:message code="admin.view.year"/><br>${aanilevy.year}</p> 
			<br>
			<a class="button" style="float: left;" href="<c:url value="/admin/create"/>"><spring:message code="admin.view.back"/></a>
			<a class="button" style="float: left;" href="<c:url value="../../"/>"><spring:message code="frontpage"/></a>
		</div>
	</div>
</body>
</html>