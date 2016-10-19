<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/styles/general.css" />" />
<title>Äänilevykirjaston muokkaus</title>
</head>
<body>
	<div id="header">
		Kirjautuneena:
		<sec:authentication property="principal.username" />
		<a href="<c:url value="../"/>">Etusivulle</a> <a
			href="../j_spring_security_logout">Kirjaudu ulos</a>
	</div>
	<div id="sisalto">
		<h1>adminsivu</h1>

		<h2>Lisää uusi äänilevy</h2>
		<form:form modelAttribute="aanilevy" method="post">
			<fieldset>
				<p>
					<form:label path="title">Äänilevy: </form:label>
					<form:input path="title" />
				</p>
				<p>
					<form:label path="artist">Artisti: </form:label>
					<form:input path="artist" />
				</p>
				<p>
					<form:label path="year">Julkaisuvuosi: </form:label>
					<form:input path="year" />
				</p>
				<p>
					<form:label path="imgLocation">Kuva (weblinkki): </form:label>
					<form:input path="imgLocation" />
				</p>
				<button type="submit">Tallenna</button>
			</fieldset>
		</form:form>
	</div>
</body>
</html>