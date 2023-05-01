<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Burgers</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>All Burgers:</h1>
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">Burger Name</th>
					<th scope="col">Restaurant Name</th>
					<th scope="col">Rating (out of 5)</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="burger" items="${burgers}">
				<tr>	
					<td>
						<c:out value="${burger.burgerName}"/>
					</td>
					<td>
						<c:out value="${burger.restaurantName}"/>
					</td>
					<td>
						<c:out value="${burger.rating}"/>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/create" class="btn btn-success">Create</a>
	</div>
</body>
</html>