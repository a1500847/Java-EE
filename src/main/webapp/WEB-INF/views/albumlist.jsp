<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/styles/general.css" />" media="screen,projection" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans|Material+Icons" rel="stylesheet">

<title><spring:message code="albumlist.pagetitle"/></title>
</head>
<body>
	<header>
		<p class="heading"><spring:message code="logo"/></p>
		<nav>
			<ul>
			<sec:authorize var="loggedIn" access="hasRole('ROLE_ADMIN')" />
			<c:choose>
				<c:when test="${loggedIn}">
					<li><a class="nav-element" href="<c:url value="/admin/create"/>"><spring:message code="albumlist.nav.admin"/></a></li>
					<li><p class="nav-element"><spring:message code="user"/> <sec:authentication property="principal.username" /></p></li>
					<li><a class="nav-element"href="<c:url value="j_spring_security_logout" />"><spring:message code="logout"/></a></li>
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
	
	<div id="sisalto" style="padding-top: 30px;">
	<p><spring:message code="albumlist.showing"/> <spring:message code="albumlist.showing.value"/></p>
	<div id="levyt">
			<c:forEach items="${levyt}" var="aanilevy">
				<div class="levy">
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<a href="<c:url value="remove/${aanilevy.id}" />"><i class="material-icons" style="font-size: 30px">delete_forever</i></a>
					</sec:authorize>
					<img src="<c:out value="${aanilevy.imgLocation}"/>" alt="kansikuva">
					<div class="levytiedot">
						<p><c:out value="${aanilevy.title}"/><br> 
						<c:out value="${aanilevy.artist}"/><br>
						<c:out value="${aanilevy.year}"/></p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>