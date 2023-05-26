<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-dark">

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

        <button class="btn  text-warning rounded-pill mt-3 mx-3 " type="submit">Logout</button>

      </form>

    </div>

  </div>

</nav>

<div class="container" align="center">

<h1>Add Route</h1>

<form method="post" action="/add-route" >

            <label>Source: </label>

            <input type="text" id="source" name="source" required/><br>

            <label>Destination:</label>

           <input type="text" id="destination" name="destination" onkeyup="checkRoute()" required/><br>

           <label>DistanceInKm:</label>

           <input type="number" name="distance" required/><br>

       <input type="submit" id="addButton" value="Add"/>

</form>

</div>

<script>

  function checkRoute() {

    var source = document.getElementById("source").value;

    var destination = document.getElementById("destination").value;

    var submitButton = document.getElementById("addButton");

    if (source!=destination) {

      submitButton.disabled = false;

    } else {

      submitButton.disabled = true;

    }

  }

</script>

</body>

</html>