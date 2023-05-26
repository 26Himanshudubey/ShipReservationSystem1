<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>${admin.name}</title>

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

<div class="container mt-3" align="center">

<form action="/edit-profile" >

<div>

            <label class="mt-3 fw-bold fs-5">Name:</label>${admin.name}<br>

        <label class="mt-3 fw-bold fs-5">Email:</label>${admin.email}<br>

       <button type="submit" class="mt-3 btn btn-secondary btn-sm" >EditProfile</button>

       <a href="/editpassword" class="mt-3 btn btn-primary btn-sm">ChangePassword</a>

       </div>

</form>

</div>

</body>

</html>