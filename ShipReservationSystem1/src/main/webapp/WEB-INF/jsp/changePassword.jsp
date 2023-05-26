<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Change Password</title>

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

<c:if test="${not empty errorMsg}">

<div class="alert alert-danger" role="alert">${errorMsg}</div>

</c:if>

<div class="container col-md-3 shadow border mt-5" align="center">

<h2>Change Password</h2><br>

<form action="/editpassword" method="post">

<div>

            <label>Old Password: </label><br>

            <input type="password" class="form-control" name='oldPassword' id="oldPassword" /><br><br>

        <label>New Password: </label><br>

        <input type="password" class="form-control border" name='newPassword' id="newPassword" required /><br><br>

        <label>Confirm Password: </label><br>

        <input type="password" class="form-control border" name='cnfNewPassword' id="cnfNewPassword" onkeyup="checkPassword()" required /><br><br>

       <button type="submit" class="btn btn-primary btn-sm" id="submitButton" disabled>UpdatePassword</button>

       </div>

</form>

</div>

 

    <script>

    function checkPassword() {

        var password = document.getElementById("newPassword").value;

        var confirmPassword = document.getElementById("cnfNewPassword").value;

        var submitButton = document.getElementById("submitButton");

        if (password != confirmPassword) {

          submitButton.disabled = true;

        } else {

          submitButton.disabled = false;

        }

      }

 

    </script>

</body>

</html>