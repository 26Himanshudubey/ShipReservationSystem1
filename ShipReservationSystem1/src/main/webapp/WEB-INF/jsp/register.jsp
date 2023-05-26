<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Ship Reservation System</title>

<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.Login-form {
	width: 400px;
	height: 300px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin-right: -50%;
	transform: translate(-50%, -50%);
}

.bg-image {
	background:
		url("https://media.gettyimages.com/id/591986620/photo/generic-cargo-container-ship-at-sea.jpg?s=612x612&w=0&k=20&c=l7C9Q5QItZTkYjPnCMa9lYyLhFGnVNWImHhxxiaH4HY=");
	width: 100%;
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

</head>

<body class="container-fluid bg-image">

	 

	<div class="Login-form">

		 

		<c:if test="${not empty errorMsg}">

			<div class="alert alert-danger" role="alert">${errorMsg}</div>

		</c:if>

		 

		<div class="container-fluid">

			<form method="post" action="/register">

				<div class="mt-3">

					<input type="text" class="form-control" name="adminId"
						placeholder="AdminID" required />

				</div>

				<div class="mt-3">

					<input type="text" class="form-control" name="name"
						placeholder="Name" required />

				</div>

				<div class="mt-3">

					<input type="text" class="form-control" name="email"
						placeholder="Email" required />

				</div>

				<div class="mt-3">

					<input type="password" class="form-control" name="password"
						placeholder="Password" required />

				</div>

				<div align="center">

					<button type="submit" class="btn btn-primary mt-3">Register</button>

				</div>

			</form>

		</div>

	</div>

	 

</body>

</html>