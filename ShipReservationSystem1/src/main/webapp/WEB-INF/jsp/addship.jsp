<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>

<title>Ship Reservation System</title>

<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

<style>


h1{

text-decoration-line: underline;

}

body{

background-image:url("https://st2.depositphotos.com/1005091/6919/v/600/depositphotos_69195339-stock-illustration-ocean-underwater-theme-background-1.jpg");

background-repeat:no-repeat;

background-size:cover;

}

</style>


</head>

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

<h1 class="mt-3">Add Ship</h1>

<a class="btn btn-secondary btn-sm" href="/add-route">AddRoute</a>

<a class="btn btn-secondary mx-3 btn-sm" href="/add-schedule">AddSchedule</a><br>

<form class="mt-3" method="post" action="/add-ship" >

            <label class="mt-3 fw-bold fs-5">Name: </label><br>

            <input type="text" name="name" required/><br>

            <label class="mt-3 fw-bold fs-5">Route:Source-Destination-DistanceInKm:</label><br>

            <select name="rId"  required>

		<c:forEach var="route" items="${routes}">

        <option></option>

            <option value="${route.rid}">${route.source}-${route.destination}-${route.distance}</option>

        </c:forEach>

		</select><br>

            <label class="mt-3 fw-bold fs-5">Schedule:Date/Time:</label><br>

            <select name="sId" required>

		<c:forEach var="schedule" items="${schedules}">

        <option></option>

            <option value="${schedule.sid}">${schedule.date}/${schedule.time}</option>

        </c:forEach>
</select><br>

           <label class="mt-3 fw-bold fs-5">Fare/KM: </label><br>

            <input type="number" name="fare" min=0 required/><br>

       <input class="btn btn-primary btn-sm mt-3 col-md-1" type="submit" value="Add"/>

</form>

</div>