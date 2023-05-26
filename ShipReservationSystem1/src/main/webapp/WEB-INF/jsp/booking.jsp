<%@ page language="java" contentType="text/html; charset=UTF-8"

	 pageEncoding="UTF-8"%>

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

<style>

h1{

text-decoration-line: underline;

body{

background-image:url("https://st2.depositphotos.com/1005091/6919/v/600/depositphotos_69195339-stock-illustration-ocean-underwater-theme-background-1.jpg");

background-repeat:no-repeat;

background-size:cover;


}

</style>

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-primary">

  <div class="container-fluid">

    <a class="navbar-brand text-uppercase text-white fw-bold fs-2">Ship Reservation System</a>

    <div class="collapse navbar-collapse fs-5" id="navbarSupportedContent">

      <ul class="navbar-nav me-auto mb-2 mb-lg-0">

	<li class="nav-item">

          <a class="nav-link text-white" href="/welcome">Home</a>

        </li>

	<li class="nav-item">

          <a class="nav-link text-white" href="/view-ship">Ships</a>

        </li>

	<li class="nav-item">

          <a class="nav-link text-white" href="/add-ship">AddShip</a>

        </li>
	<li class="nav-item">

          <a class="nav-link text-white" href="/customer">Customer</a>

        </li>

	<li class="nav-item">

          <a class="nav-link text-white" href="/showBooking">Booking</a>

        </li>

	</ul>

      <form class="d-flex" method="post" action="/logout">

      <a class="btn  text-white rounded-pill mt-3" href="/profile">${admin.name}</a>

        <button class="btn  text-danger rounded-pill mt-3 mx-3 " type="submit">Logout</button>

      </form>

    </div>

  </div>

</nav>

<div class="container mt-3" align="center">

<h1>Booking Details</h1>

<form class="mt-3" action="/showBooking" method="get">

    <label class="mt-3 fw-bold fs-5" for="bookingDate">Booking Date:</label>

    <input type="date" name="bookingDate" required>

 

   <label class="mt-3 fw-bold fs-5" for="shipId">Ship ID:</label>

    <select name="shipId" required>

	<option value=></option>

	<option value=1>1</option>

	<option value=2>2</option>

	<option value=3>3</option>
	<option value=22>22</option>

</select>

    <button type="submit">Search</button>

</form>

 

<table class="table table-bordered border-dark mt-5" align="center" border="2">

	<tr class="table-info" >

	<th>booking Id</th>

	<th>booking Date</th>

	<th>customer Id</th>

	<th>Ship Id</th>

	<th>Payment</th>

	</tr>

	<c:forEach var="booking" items="${bookings}">

        <tr class="table-success">

	<td>${booking.bid}</td>

	<td>${booking.bookingDate}</td>

	<td>${booking.cid}</td>

	<td>${booking.shipId}</td>

	<td>${booking.payment}</td>

	</tr>

    </c:forEach>	

</table>

</div>

</body>

</html>