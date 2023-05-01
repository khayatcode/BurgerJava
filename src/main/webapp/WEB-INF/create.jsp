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
<title>Create Burger</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
	  	<h1>Add a Burger:</h1>
		  <div class="row">
		    <div class="col">
				<form:form action="/createBurger" method="post" modelAttribute="burger">
			        <div class="mb-3">
			        	<form:label path="burgerName" class="form-label">Burger Name:</form:label>
			        	<div>
		         			<form:errors path="burgerName" class="text-danger"/>
			        	</div>
			          	<form:input path="burgerName" class="form-control"/>
			        </div>
			        <div class="mb-3">
			            <form:label path="restaurantName" class="form-label">Restaurant Name:</form:label>
			            <div>
			            	<form:errors path="restaurantName" class="text-danger"/>
			            </div>
			            <form:input path="restaurantName" class="form-control"/>
			        </div>
			        <div class="mb-3">
				        <form:label path="rating" class="form-label">Rating:</form:label>
				        <div>
				        	<form:errors path="rating" class="text-danger"/>
				        </div>
				        <form:input path="rating" class="form-control"/>
			        </div>
			        <div class="mb-3">
				        <form:label path="notes" class="form-label">Notes:</form:label>
				        <div class="d-block">
				        	<form:errors path="notes" class="text-danger"/>
				        </div>
				        <form:input path="notes" class="form-control"/>
			        </div>
			        <div class="d-flex justify-content-between">
				        <input type="submit" value="Submit" class="btn btn-primary"/>
				        <a href="/home" class="btn btn-warning">Home</a>
			        </div>
			    </form:form>
		    </div>
		</div>
	</div>

	
</body>
</html>