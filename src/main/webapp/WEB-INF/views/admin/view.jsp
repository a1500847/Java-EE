<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/styles/general.css" />"
	media="screen,projection" />
<title>Lisätty äänilevy</title>
</head>
<body>
<div id="sisalto">
	<h1>Äänilevy lisättiin tietokantaan</h1>
	<table class="levylista">
		<tr class="levy">
			<td><img src="${aanilevy.imgLocation}"></td>
			<td><p>
					Albumin nimi: <br> Artisti: <br> Julkaisuvuosi: <br>
				</p></td>
			<td><p>
					<c:out value="${aanilevy.title}" default="-----" />
					<br>
					<c:out value="${aanilevy.artist}" default="-----" />
					<br>
					<c:out value="${aanilevy.year}" default="-----" />
				</p></td>
		</tr>
	</table>
	<p>
		<a href="<c:url value="/admin/edit"/>">Lisää toinen äänilevy</a>
	</p>
	<p>
		<a href="<c:url value="../../"/>">Etusivulle</a>
	</p>
	</div>
</body>
</html>