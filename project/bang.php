<!DOCTYPE html>
<html>
  <head>
  <script type = "text/javascript">
  function city() {
    window.location.replace("citysel.php");
}
</script>
    <title>BENGALURU-MOVIES</title>
    <link rel="stylesheet" type="text/css" href="./CSS/style2.css" />
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
	  
	  <div id="wrapper">
            <div id="nav">
                <ul>
                    <li><input type = "button" value = "ALL"  onclick="fun()"/>  </li>
					<li><input type = "button" value = "HINDI" onclick="hin()"/>  </li>
                    <li><input type = "button" value = "ENGLISH" onclick="eng()"/>  </li>
                    <li><input type = "button" value = "KANNADA"  onclick="tel()"/>  </li>
					<li><input type = "button" value = "CHANGE CITY" style="float:right;" onclick = "city()" />  </li>
                </ul>
            </div>
            <div id="header">
                <center>	<h1>
				<img src="./images/citylogos/bang.png" alt="header" width = "120px"/>
			</h1></center>

            </div>
			
            <div id="content">
			
			
                <ul>
                    <li>
                        <img alt="img 1" src="./images/movies/english/avengers4/avg1.jpg" width = "280px" height = "400px">
                         
							<p><a href="av.php">AVENGERS: INFINITY WAR</a></p>
						 
                    </li>
                    <li>
                        <img alt="img 1" src="./images/movies/english/readyplayerone/rpo1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=10000">READY PLAYER ONE</a></p>
						 
                    </li>
                    <li>
                        <img alt="img 1" src="./images/movies/hindi/bg2/bg21.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=30011">BAAGHI 2</a></p>
						 
                    </li>
					<li>
                        <img alt="img 1" src="./images/movies/hindi/oct/oct1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=30111">OCTOBER</a></p>
						 
                    </li>
					 <li>
                        <img alt="img 1" src="./images/movies/hindi/bml/bml1.png" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=30101">BLACKMAIL</a></p>
							</li>	
					
					 <li>
                        <img alt="img 1" src="./images/movies/kannada/seizer/sez1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=40012">Seizer</a></p>
						 
                    </li>
					<li>
                        <img alt="img 1" src="./images/movies/english/rampage/rmp1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=10001">RAMPAGE</a></p>
						 
                    </li>
				<li>
                        <img alt="img 1" src="./images/movies/english/solo/solo1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=10003">SOLO: A STAR WARS MOVIE</a></p>
						 
                    </li>
				
					<li>
                        <img alt="img 1" src="./images/movies/kannada/gultoo/gul1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=40010">Gultoo</a></p>
						 
                    </li>
					<li>
                        <img alt="img 1" src="./images/movies/kannada/mercury/mer1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=40011">Mercury</a></p>
						 
                    </li>
					
					</ul>
            </div>
			<div id="hindi" style="display:none">
			<ul>
			 <li>
                        <img alt="img 1" src="./images/movies/hindi/bg2/bg21.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=30011">BAAGHI 2</a></p>
						 
                    </li>
					<li>
                        <img alt="img 1" src="./images/movies/hindi/oct/oct1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=30111">OCTOBER</a></p>
						 
                    </li>
					 <li>
                        <img alt="img 1" src="./images/movies/hindi/bml/bml1.png" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=30101">BLACKMAIL</a></p>
							</li>
						 
          
					
					
					</ul>
			</div>
			<div id="tel" style="display:none">
			<ul>
			<li>
                        <img alt="img 1" src="./images/movies/kannada/gultoo/gul1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=40010">Gultoo</a></p>
						 
                    </li>
					<li>
                        <img alt="img 1" src="./images/movies/kannada/mercury/mer1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=40011">Mercury</a></p>
						 
                    </li>
					 <li>
                        <img alt="img 1" src="./images/movies/kannada/seizer/sez1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=40012">Seizer</a></p>
						 
                    </li>
		
				
					</ul>
			</div>
			<div id="eng" style="display:none">
			 <ul>
                    <li>
                        <img alt="img 1" src="./images/movies/english/avengers4/avg1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=10002">AVENGERS: INFINITY WAR</a></p>
						 
                    </li>
					 <li>
                        <img alt="img 1" src="./images/movies/english/readyplayerone/rpo1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=10000">READY PLAYER ONE</a></p>
						 
                    </li>
					<li>
                        <img alt="img 1" src="./images/movies/english/rampage/rmp1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=10001">RAMPAGE</a></p>
						 
                    </li>
					<li>
                        <img alt="img 1" src="./images/movies/english/solo/solo1.jpg" width = "280px" height = "400px">
                         
							<p><a href="disp.php?id=10003">SOLO: A STAR WARS MOVIE</a></p>
						 
                    </li>
					</ul>
			
			
			</div>
			
			
        </div>
		
		<script>
		
		var x=document.getElementById("content");
		var y=document.getElementById("hindi");
		var z=document.getElementById("eng");
		var a=document.getElementById("tel");
		function fun(){
			z.style.display="none";
		y.style.display="none";
		a.style.display="none";
		if(x.style.display=="none"){
			x.style.display="block";
		}
		/*else
			x.style.display="none";*/
		
		}
		function hin(){
		x.style.display="none";
		
		z.style.display="none";
		a.style.display="none";
		if(y.style.display=="none"){
			y.style.display="block";
		}
		/*else
			y.style.display="none";*/
		
		}
		function eng(){
		x.style.display="none";
		y.style.display="none";
		a.style.display="none";
		if(z.style.display=="none"){
			z.style.display="block";
		}
		/*else
			z.style.display="none";*/
		
		}
		function tel(){
		x.style.display="none";
		y.style.display="none";
		z.style.display="none";
		if(a.style.display=="none"){
			a.style.display="block";
		}
		/*else
			a.style.display="none";*/
		
		}
		
		
		
		
		</script>
		</body>
</html>