<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Customer Details</title>

<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background:
		url("https://media.gettyimages.com/id/1178343370/photo/container-ship-on-the-sea.jpg?s=1024x1024&w=gi&k=20&c=kIw4IuYb8Ayd08TlZkrhooQnoOD3fRFK2CY95N2nBCg=");
	background-repeat: no-repeat;
	background-size: cover;
}

 

.navbar {
	background-color: #343a40;
	padding-top: 5px;
	padding-bottom: 5px;
}

 

.navbar-brand {
	color: #fff !important;
	font-size: 2rem;
	font-weight: bold;
	text-transform: uppercase;
}

 

.navbar-nav .nav-link {
	color: #fff !important;
	font-family: "Segoe UI", Arial, sans-serif;
}

 

.container {
	margin-top: 30px;
}

 

h1 {
	color: #000;
	font-size: 36px;
	font-weight: bold;
	margin-bottom: 30px;
}

 

.table {
	border-color: #343a40;
}

 

.table-info {
	background-color: #e9ecef;
	color: #343a40;
}

 

.table-success {
	background-color: #d1e7dd;
	color: #155724;
}

.btn {
	margin-top: 10px;
}
</style>

</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-dark">

		<div class="container-fluid">

			<a class="navbar-brand" href="#">Ship Reservation System</a>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">

				<ul class="navbar-nav me-auto mb-2 mb-lg-0">

					<li class="nav-item"><a class="nav-link" href="/welcome">Home</a>

					</li>

					<li class="nav-item"><a class="nav-link" href="/view-ship">Ships</a>

					</li>

					<li class="nav-item"><a class="nav-link" href="/add-ship">Add

							Ship</a></li>

					<li class="nav-item"><a class="nav-link" href="/customer">Customer</a>

					</li>

					<li class="nav-item"><a class="nav-link" href="/showBooking">Booking</a>

					</li>

				</ul>

				<form class="d-flex" method="post" action="/logout">

					<a class="btn btn-outline-primary text-white rounded-pill mt-2"
						href="/profile">${admin.name}</a>

					<button
						class="btn btn-outline-danger text-warning rounded-pill mt-2 mx-3"
						type="submit">Logout</button>

				</form>

			</div>

		</div>

	</nav>

	<div class="container" align="center">

		<h1 class="text-center">Customer Details</h1>

		<table class="table table-bordered" align="center">

			<thead class="table-info">

				<tr>

					<th>Customer ID</th>

					<th>Customer Name</th>

					<th>Age</th>

					<th>Contact No.</th>

				</tr>

			</thead>

			<tbody>

				<c:forEach var="customer" items="${customers}">

					<tr class="table-success">

						<td>${customer.cid}</td>

						<td>${customer.cname}</td>

						<td>${customer.age}</td>

						<td>${customer.contactNo}</td>

					</tr>

				</c:forEach>

			</tbody>

		</table>

	</div>

</body>

</html>