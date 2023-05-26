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
	background: url("https://www.tangarshipping.com/img/Banner2.jpeg");
	width: 100%;
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

</head>

<body class="container-fluid bg-image">
	<nav class="navbar navbar-light bg-primary">
		 
		<div class="container-fluid">
				<i class="fa-solid fa-ship"></i>
			    <a class="navbar-brand text-uppercase text-white fw-bold fs-2">Ship
				Reservation System</a>    
			<form class="d-flex">

				   <!--      <a class="nav-link btn btn-outline-danger text-white"
					href="/register">Admin-Register</a>  -->  
			</form>
			 
		</div>

	</nav>

	 

	<div class="Login-form">

		 

		<c:if test="${not empty errorMsg}">

			<div class="alert alert-danger" role="alert">${errorMsg}</div>

		</c:if>

		 

		<c:if test="${not empty successMsg}">

			<div class="alert alert-success" role="alert">${successMsg}</div>

		</c:if>
		     

		<div class="container-fluid">

			<form method="post" action="login">

				<div class="mt-3">

					<input type="text" class="form-control" name="email"
						placeholder="Email" required />

				</div>

				<div class="mt-3">

					<input type="password" class="form-control" name="password"
						placeholder="Password" required />

				</div>

				<div align="center">

					<button type="submit" class="btn btn-success mt-3">Login</button>

				</div>

			</form>

		</div>

	</div>

	 

</body>

</html>