<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>

<title>Ship Reservation System</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

<style>


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

    <a class="navbar-brand text-uppercase text-white fw-bold fs-2">Ship Details</a>

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

      <a class="btn btn text-white square mt-3" href="/profile">${admin.name}</a>

        <button class="btn  text-warning square mt-3 mx-3 " type="submit">Logout</button>

      </form>

    </div>

  </div>

</nav>

 

<!-- <h1 align="center" class="text-dark mt-3" style="background-color:#20c997"><u>Ship Details</u></h1> -->

<div class="container" >

<table class="table table-bordered border-dark mt-5" align="center" border="3">

		<tr class="table-info" >

		<th>Ship Id</th>

		<th>Ship Name</th>

	<th>

 <table>

<tr> <th align="center">Route</th> </tr>

<tr>

<th>Source - Destination - DistanceInKm</th>

</tr>

</table>

</th>

		<th>

        <table>

<tr> <th align="center">Schedule</th> </tr>

<tr>

<th>Date/Time</th>

</tr>

</table>

</th>

		<th>Fare/KM</th>

		<th>Update</th>

	<th>Delete</th>

	</tr>

		<c:forEach var="ship" items="${ship}">

        <tr class="table-success">

	<td>${ship.id}</td>

	<td>${ship.name}</td>

		<td>${ship.route.source}-${ship.route.destination}-${ship.route.distance}</td>

			 <td>${ship.schedule.date}/${ship.schedule.time}</td>

		<td>${ship.fare}</td>
		<td><a href="/update-ship/${ship.id}" class="btn btn-success btn-sm"><i class="bi bi-pencil-square"></i></a></td>

<td><a href="/delete-ship/${ship.id}" class="btn btn-danger btn-sm"><i class="bi bi-trash-fill"></i></a></td>

		</tr>

    </c:forEach>

</table>

</div>

</body>

</html>