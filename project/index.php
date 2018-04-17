<!DOCTYPE html>
<html>
  <head>
    <title>Home Page</title>
    <link rel="stylesheet" type="text/css" href="./CSS/style1.css" />
  </head>

  <body>
    <div class="myHeader">
    	<div class="header1">
    		<div class="MHimage">
      		<a href="./index.php"><img src="./images/logo.jpg" /></a>
	      </div>
  	    <div class="searchBar">
    	  	<input type="text" name="searchBar" placeholder="Search" />
      		<input type="image" name="searchB" src="./images/search.png" class="searchButton" />
      	</div>
	      <div class="headerA">
  	    	<a href="./login.php">Login</a>
    	  	<a href="./signup.php">Sign Up</a>
      	</div>
	    </div>
	  </div>

	  <div class="slideshow">
	  	<div class="container">
		  	<div class="mySlides fade">
  	  			<img src="./images/movies/english/avg1.jpg" style="width:100%">
  			</div>

	  		<div class="mySlides fade">
  	  		<img src="./images/movies/telugu/ban1.jpg" style="width:100%">
  			</div>

 	 			<div class="mySlides fade">
  	  		<img src="./images/movies/hindi/oct1.jpg" style="width:100%">
  			</div>

 	  		<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  			<a class="next" onclick="plusSlides(1)">&#10095;</a>
		  </div>
	 
	 	  <div style="text-align:center">
  			<span class="dot" onclick="currentSlide(1)"></span> 
  			<span class="dot" onclick="currentSlide(2)"></span> 
  			<span class="dot" onclick="currentSlide(3)"></span> 
			</div>
			<script type="text/javascript" src="./JS/slideshow.js"></script>
		</div>
  </body>
</html>