<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link type="text/css" rel="stylesheet" href="<c:url value="/resources/styles/general.css" />"  media="screen,projection"/>
 <!--Let browser know website is optimized for mobile-->
 <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Äänilevykirjasto</title>
</head>
<body>
<h1>Äänilevyt</h1>
	<table id="levylista">
	 <c:forEach items="${levyt}" var="aanilevy">
	 	<tr id="levy">
	 		<td><img src="${aanilevy.imgLocation}"></td>	 	
		 	<td>${aanilevy.artist} - ${aanilevy.title}</td>
		 	<td>${aanilevy.year}</td> 	
	 	</tr>
	 </c:forEach>
	</table>
</body>
</html>