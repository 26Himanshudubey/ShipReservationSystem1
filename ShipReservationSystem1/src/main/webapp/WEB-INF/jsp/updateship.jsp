<%@ page language="java" contentType="text/html; charset=UTF-8"

 pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Ship Reservation System</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"

integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

<style>

h1{

text-decoration-line: underline;

}

</style>

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-dark">

  <div class="container-fluid">

    <h2 class="navbar-brand text-uppercase text-white fw-bold fs-2">Ship Reservation System</h2>

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

      <a class="btn btn text-white rounded-pill mt-3" href="/profile">${admin.name}</a>

        <button class="btn  text-warning rounded-pill mt-3 mx-3" type="submit">Logout</button>

      </form>

    </div>

  </div>

</nav>

<div class="container" align="center">

<h1 class="mt-3">Update Ship</h1>

<form method="post" action="/update-ship/${id}">

            <label class="mt-3 fw-bold fs-5">Ship Name:</label><br>

            <input type="text" name="name" value="${ship.name}" required><br>

            <label class="mt-3 fw-bold fs-5">Route:Source-Destination-Distance:</label><br>

            <select name="route" >

		<c:forEach var="route" items="${route}">

            <option value="${route.rid}">${route.source}-${route.destination}-${route.distance}</option>

        </c:forEach>

	</select><br>

        <label class="mt-3 fw-bold fs-5">Schedule:Date/Time:</label><br>

            <select name="schedule">

	<c:forEach var="schedule" items="${schedule}">

            <option value="${schedule.sid}">${schedule.date}/${schedule.time}</option>

        </c:forEach>

	</select><br>

        <label class="mt-3 fw-bold fs-5">Fare/KM:</label><br>

            <input type=number name="fare" value="${ship.fare}" min=0 required><br>

            <button type="submit" class="btn btn-primary btn-sm mt-3">Update</button>

</form>

</div>

</body>

</html>