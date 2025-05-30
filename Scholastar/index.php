<!DOCTYPE html>
<html>

	<!--Metadata-->
	<head>
  
		<!--Title-->
		<title>Sturch | Your tool to finding study resources.</title>
		
	<!--CSS-->
		
		<!--Bootstrap Stylesheet-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<!--Custon Stylesheet-->
		<link rel="stylesheet" type="text/css" href="css/index.css" />
  
	</head>
	
	<!--Webpage Body-->
	<body>
	
		<!--Navigation Bar-->
		<?php include("navigation_bar.php");?>
		
		
		<!--Main Jumbotron-->
		<div id="jumbotron" class="p-5 bg-primary text-white">
		
			<!--Title-->
			<h1 class="font-weight-bolder">Scholastar</h1>
					
			<!--Search Bar-->
			<div class="mb-3">
					
				<!--Input Box-->
				<input type="text" id="search" class="form-control" placeholder="Type a guide name...">
						
				<!--Button-->
				<button id="search-btn" class="btn btn-primary mt-3">Search</button>
						
		</div>


		
		
	
		<!--JavaScript-->
		<script>
		 
			//Check if Search Button is Clicked
			document.getElementById("search-btn").addEventListener("click", function () {
		
			//Get Search Keyword
			const searchKeyword = document.getElementById("search").value.trim();
			
			//Set Variables in Local Storage
			
				//Search Keyword
				localStorage.setItem("searchKeyword", searchKeyword);
				
				//From Homepage Boolean
				localStorage.setItem("fromHomepage", "true");
				
			//Go to the Search Page
			window.location.href = "Trial.php";
		
		});

		</script>
	
	</body>
  
</html>
