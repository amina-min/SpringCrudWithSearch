<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6 col-mt-5">
				<h3>User Form</h3>

				<c:if test="${data.status.equals('success')}">
				<div class="alert alert-success">${data.message}</div>					
				</c:if>
				
				<c:if test="${data.status.equals('failed') }">
				<div class="alert alert-danger">${data.message}</div>					
				</c:if>


				<form action="/create" method="post">
					<div class="mb-3">
						<label for="name" class="form-label"> Name</label> <input
							type="text" class="form-control" id="name"
							aria-describedby="nameHelp" name="name"
							placeholder="enter your name">
					</div>
					<div class="mb-3">
						<label for="email" class="form-label">Email </label> <input
							type="email" class="form-control" id="email"
							aria-describedby="emailHelp" name="email"
							placeholder="enter your email">
					</div>
					<div class="mb-3">
						<label for="address" class="form-label">Address</label> <input
							type="text" class="form-control" id="address"
							aria-describedby="addressHelp" name="address"
							placeholder="enter your address">
					</div>
					<div class="mb-3">
						<label for="plone" class="form-label">Phone No.</label> <input
							type="plone" class="form-control" id="plone"
							aria-describedby="ploneHelp" name="plone"
							placeholder="enter your plone no.">
					</div>
					<div class="mb-3">
						<label for="location" class="form-label">Location</label> <input
							type="text" class="form-control" id="location"
							aria-describedby="locationHelp" name="location"
							placeholder="enter your location">
					</div>

					<button type="submit" class="btn btn-primary">save</button>


					<a href="/">Show User List</a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>