<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Ship Reservation System</title>

<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">


</head>

<style>
.bg-image {
	background: url("https://www.tangarshipping.com/img/Banner2.jpeg");
	height: 100vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>


<body class="container-fluid bg-image">

	 

	<nav class="navbar navbar-expand-lg navbar-light bg-white">

		 
		<div class="container-fluid">

			    <a class="navbar-brand text-uppercase text-red fw-bold fs-2">Welcome
				to Reservation System</a>    
			<div class="collapse navbar-collapse fs-5"
				id="navbarSupportedContent">

				     
				<ul class="navbar-nav me-auto mb-sm-1">
					<li class="nav-item">          <a
						class="nav-link active text-black" aria-current="page"
						href="/welcome">Home</a>        
					</li>
					<li class="nav-item">          <a class="nav-link text-red"
						href="/view-ship">ViewShips</a>        
					</li>
					<li class="nav-item">          <a class="nav-link text-red"
						href="/add-ship">AddShip</a>        
					</li>
				</ul>

				     
				<form class="d-flex" method="post" action="/logout">

					       
					<button class="btn btn-outline-blue text-danger square mt-3"
						type="submit">Logout</button>

					     
				</form>

				   
			</div>

			 
		</div>

	</nav>
	

	   <p "color: yellow;">
	"Welcome aboard! Set sail on a voyage of exploration and adventure with our ship reservation website.
	</p>
	<p "color: yellow;">
	 Discover the world's breathtaking destinations, and let us be your compass on the journey to unforgettable memories.
	 </p>
	 <p "color: yellow;">
	  From tranquil cruises to thrilling expeditions, we're here to make your maritime dreams a reality. 
	  </p>
	  <p "color: yellow;">
	  So, anchor your worries and embark on an extraordinary experience with us. Bon voyage!"	</p>

</body>

</html>