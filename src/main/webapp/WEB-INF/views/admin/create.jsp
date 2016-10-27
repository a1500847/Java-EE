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
					<li><a class="nav-element" href="<c:url value="../"/>"><spring:message code="back"/></a></li>
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
	<div class="keskita">
		<form:form modelAttribute="aanilevy" method="post">
			<fieldset>
				<legend><spring:message code="admin.create.legend" /></legend>
				<spring:hasBindErrors name="aanilevy">
					<p class="Error"><spring:message code="admin.create.errors" />:</p>
				</spring:hasBindErrors>
				<p>
					<form:errors path="title" cssClass="virheteksti"/><br>
					<form:label path="title"><spring:message code="admin.create.title"/><span class="pakollinen">*</span> </form:label>
					<form:input path="title" cssErrorClass="virheellinenkentta"/> 
				</p>
				<p>	
					<form:errors path="artist" cssClass="virheteksti"/><br>
					<form:label path="artist"><spring:message code="admin.create.artist"/><span class="pakollinen">*</span></form:label>
					<form:input path="artist" cssErrorClass="virheellinenkentta"/> 
				</p>
				<p>
					<form:errors path="year" cssClass="virheteksti"/><br>
					<form:label path="year"><spring:message code="admin.create.year"/><span class="pakollinen">*</span></form:label>
					<form:input path="year" cssErrorClass="virheellinenkentta"/> 
				</p>
				<p>	
					<br><br>
					<form:label path="imgLocation"><spring:message code="admin.create.imglocation"/> </form:label>
					<form:input path="imgLocation" cssErrorClass="virheellinenkentta"/>
				</p>
				<button class="button" type="submit" class="pure-button"><spring:message code="admin.create.save"/></button>
			</fieldset>
		</form:form>
		</div>
	</div>
</body>
</html>