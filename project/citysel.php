<!DOCTYPE html>
<html>
  <head>
  <script type = "text/javascript">
  function open1() {
    window.location.replace("hyd.php");
}

function open2() {
    window.location.replace("bang.php");
}

function open3() {
    window.location.replace("del.php");
}
  </script>
    <title>CITY SELECTION</title>
    <link rel="stylesheet" type="text/css" href="./CSS/citysel.css" />
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
		  WELCOME
      	</div>
	    </div>
	  </div>
	  <div class="ab"> SELECT A CITY </div><br><br><br><br>
	  <center>
<input type="button" class="button3" value="HYDERABAD" onclick="open1();" /> <input type="button" class="button3" value="BENGALURU" onclick="open2();" /> <input type="button" class="button3" value="DELHI" onclick="open3();" /> 
	  </center>
	 </body>
	 </html>