<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/styles/general.css" />" media="screen,projection" />
<title><spring:message code="admin.view.title"/></title>
</head>
<body>

<header>
		<p class="heading"><spring:message code="admin.create.heading"/></p>
		<nav>
			<ul>
			<sec:authorize var="loggedIn" access="hasRole('ROLE_ADMIN')" />
			<c:choose>
				<c:when test="${loggedIn}">
					<li><p class="nav-element">
							<spring:message code="user"/> <sec:authentication property="principal.username" />
						</p></li>
					<li><a class="nav-element" href="<c:url value="../../"/>"><spring:message code="back"/></a></li>
					<li><a  class="nav-element"href="<c:url value="../j_spring_security_logout" />"><spring:message code="logout"/></a></li>
				</c:when>
				<c:otherwise>
					<li><a class="nav-element" href="<c:url value="login"/>"><spring:message code="login"/></a></li>
				</c:otherwise>
			</c:choose>
			</ul>
		</nav> 
	</header>

<div id="sisalto">
	<p class="Info"><spring:message code="admin.view.info"/></p>
	
	<div class="levy">
		<img src="${aanilevy.imgLocation}" alt="Kansikuva" style="width:100%; max-width:180px; height: 180px;">
	</div>
	<div style="margin: 30px; height: 180px;">
		<p><spring:message code="admin.view.title"/><br>${aanilevy.title}<br><br>
		<spring:message code="admin.view.artist"/><br>${aanilevy.artist}<br><br>
		<spring:message code="admin.view.year"/><br>${aanilevy.year}</p>
	</div>	
		<a class="button" style="float: left;" href="<c:url value="/admin/create"/>">Lisää toinen äänilevy</a>
		<a class="button" style="float: left;" href="<c:url value="../../"/>">Etusivulle</a>
	</div>
</body>
</html>