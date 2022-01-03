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
		<a href="/creatUser">Create User</a>


		<h2 style="text-align: center;">UserList</h2>
		<div class="col-md-3">
			<form action="/searchUsers" method="get">
				<div class="input-group mb-3">
					<input type="text" class="form-control" name="searchUser"
						placeholder="Search users" aria-label="Search users"
						aria-describedby="basic-addon2">
					<button id="basic-addon2" class="input-group-text" type="submit">Search</button>
				</div>
			</form>
		</div>

		<table class="table">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Address</th>
					<th scope="col">Phone</th>
					<th scope="col">Location</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="u" items="${data.users}">
					<tr>
						<th>${u.id}</th>
						<td>${u.name}</td>
						<td>${u.email}</td>
						<td>${u.address}</td>
						<td>${u.phone}</td>
						<td>${u.address}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>