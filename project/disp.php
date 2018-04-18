<?php
$servername = "localhost";
$username = "root";
$password = "YES";
$dbname = "moviesite";
$conn = mysqli_connect($servername, $username, "",  $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
$movie_id = $_GET['id'];
  $sql = "SELECT movie_name, language, genre, rating, cast, director, description, poster_loc from movies where movie_id = $movie_id";
  $result = mysqli_query($conn, $sql);
  $row = mysqli_fetch_assoc($result);
?>
<!DOCTYPE html>
<html>
  <head>
  <script>
  function fun() {
	  window.location.replace("citysel.php");
  }
  </script>
    <title> <?php echo htmlspecialchars($row["movie_name"]); ?> </title>
    <link rel="stylesheet" type="text/css" href="./CSS/info.css" />
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
	  <img alt="img 1" src="<?php echo htmlspecialchars($row["poster_loc"]); ?>" width = "280px" height = "400px" style="float: left;
	margin-left: 30px;
	margin-top: 50px; padding-right: 20px;" />
	  
	  <p id="box">
	  <?php
  
  if (mysqli_num_rows($result) > 0) {
  
        echo "<u><b>Name</b></u>: " . $row["movie_name"]. "<br>" ."<br>" . "<u><b>Language</b></u>: " .$row["language"]. "<br>" ."<br>" . "<u><b>Genre</b></u>: " .$row["genre"]. "<br>" . "<br>" . "<u><b>Rating</b></u>: " .$row["rating"]."<br>" . "<br>" . "<u><b>Cast</b></u>: " .$row["cast"]. "<br>" . "<br>" . "<u><b>Director</b></u>: " .$row["director"]. "<br>" ."<br>" . "<u><b>Description</b></u>: " .$row["description"]. "<br>" ."<br>" ;
    
} else {
    echo "0 results";
}

mysqli_close($conn);
  ?>
  </p><br><br><br>
  <center> <input type = "button" value="GO BACK" class="button3" onclick="fun();" /><input type = "button" value="BOOK NOW" class="button3" /> <center>
	  </body>
	  </html>