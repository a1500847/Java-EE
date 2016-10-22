<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/styles/general.css" />" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/styles/form.css" />" />
<title><spring:message code="admin.create.pagetitle"/></title>
</head>
<body>
	<div id="header">
		Kirjautuneena:
		<sec:authentication property="principal.username" />
		<a href="<c:url value="../"/>"><spring:message code="back"/></a> <a
			href="../j_spring_security_logout">Kirjaudu ulos</a>
	</div>
	<div id="sisalto">
		<h1><spring:message code="admin.create.heading"/></h1>

		<form:form modelAttribute="aanilevy" method="post">
			<fieldset>
				<legend><spring:message code="admin.create.legend"/></legend>
				
				<spring:hasBindErrors name="aanilevy">
					<p class="virheotsikko"><spring:message code="admin.create.errors" />:</p>
					<div class="virheblokki"><form:errors path="*"/></div>
				</spring:hasBindErrors>
				<p>
					<form:label path="title"><spring:message code="admin.create.title"/><span class="pakollinen">*</span> </form:label>
					<form:input path="title" cssErrorClass="virheellinenkentta"/> <form:errors path="title" cssClass="virheteksti"/>
				</p>
				<p>
					<form:label path="artist"><spring:message code="admin.create.artist"/><span class="pakollinen">*</span> </form:label>
					<form:input path="artist" cssErrorClass="virheellinenkentta"/> <form:errors path="artist" cssClass="virheteksti"/>
				</p>
				<p>
					<form:label path="year"><spring:message code="admin.create.year"/><span class="pakollinen">*</span> </form:label>
					<form:input path="year" cssErrorClass="virheellinenkentta"/> <form:errors path="year" cssClass="virheteksti"/>
				</p>
				<p>
					<form:label path="imgLocation"><spring:message code="admin.create.imglocation"/> </form:label>
					<form:input path="imgLocation" />
				</p>
				<button type="submit"><spring:message code="admin.create.save"/></button>
			</fieldset>
		</form:form>
	</div>
</body>
</html>