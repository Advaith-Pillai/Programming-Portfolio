<!DOCTYPE html>
<html lang="en">

	<!--Metadata-->
	<head>
	
		<!--Set Language to English-->
		<meta charset="UTF-8">
		
		<!--Set Device Viewing Details-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!--Title-->
		<title>Search Study Guides</title>
		
		<!--CSS-->
			
			<!--Main Stylesheet-->
			<link rel="stylesheet" type="text/css" href="css/main.css" />
			
			<!-- Bootstrap Stylesheet-->
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
			
	</head>
	
	<!--Website Body-->
	<body>
		
		<!--Navigation Bar-->
		<?php include("navigation_bar.php");?>
		
		
		<!--Main Search Container-->
		<div class="container">
		
			<!--Title-->
			<h1 class="my-4">Search Study Guides</h1>
			
			<!--Search Bar-->
			<div class="mb-3">
				
				<!--Input Box-->
				<input type="text" id="search" class="form-control" placeholder="Type a guide name...">
				
				<!--Button-->
				<button id="search-btn" class="btn btn-primary mt-3">Search</button>
				
			</div>

			<!--Loading Spinner-->
			<div id="loading-spinner">
			
				<!--Generate Spinner-->
				<div class="spinner-border text-primary" role="status"></div>
				
			</div>
			
			<!--Results Container-->
			<div id="results"></div>
			
		</div>
		
		
		<!--JavaScript-->
		<script>
		
			//Variables
		
				//Get Results Container
				const resultsContainer = document.getElementById("results");
				
				//Get Spinner
				const spinner = document.getElementById("loading-spinner");
			
			//Check if Coming from Homepage
			if (localStorage.getItem("fromHomepage") == "true") {
				
				//Search Using Keyword
				search(localStorage.getItem("searchKeyword"));
				
				//Change Boolean
				localStorage.setItem("fromHomepage", "false");
				
				//Log Search for Debug Purposes
				console.log("FromHomepage value:", localStorage.getItem("fromHomepage"));
			
			}
			
			
			//Check if Search Button is Pressed
			document.getElementById("search-btn").addEventListener("click", function () {
			
				//Trim Extra Spaces off of the Input for Search Keyword
				const searchKeyword = document.getElementById("search").value.trim();
				
				//Search
				search(searchKeyword);
			
			});
		
			// Search Function
			function search(searchKeyword) {
				
				//If Search Keyword is not empty
				if (searchKeyword) {
				
					//Clear previous results
					resultsContainer.innerHTML = ''; 
					
					//Show spinner when fetching data
					spinner.style.display = 'block'; 
					
					//Log Request in Console
					console.log("Sending POST request with keyword:", searchKeyword);
					
					//Get Results
					fetch('trial_connect.php', {
					
						//Set method to POST
						method: 'POST',
						
						//Set Header
						headers: {
							'Content-Type': 'application/json'
						},
						
						//Send the Keyword as a String
						body: JSON.stringify({ searchKeyword })
						
					})
					
					//Once Response is Recieved
					.then(response => {
						
						//Log Recieved Response
						console.log("Received response:", response); // Log response for debugging
						
						//Return the Recieved Response
						return response.json();
						
					})
					
					//Once Data is Acquitted
					.then(data => {
					
						//Stop Spinner
						spinner.style.display = 'none';
						
						//Log The Recieved Data
						console.log("Received data:", data);
						
						//If the Data is not Empty
						if (data.length > 0) {
						
							//Go Through Each Search Result
							data.forEach((item, index) => {
							
								//Create a New Result Box
								const resultItem = document.createElement("div");
								
									//Set Style
									resultItem.className = "card mb-3 shadow-sm";

									//Button
									
										//Create Button Element
										const button = document.createElement("a");
										
										//Set Link to PDF Viewer
										button.href = "PDF_Viewer.php";
										
										//Set Style
										button.className = "btn btn-primary";
										
										//Add Text
										button.textContent = "Open";

										//Check if Button is Clicked
										button.addEventListener("click", () => {
										
											//Set Study Guide Name
											localStorage.setItem("Study Guide Name", item.file_name);
											
											//Set Study Guide Path
											localStorage.setItem("study guide", item.file_path);
											
										});

									//Create Result
										
										//Inner HTML
										resultItem.innerHTML = `
											<!--Box-->
											<div class="card-body">
											
												<!--Show Name of Study Guide-->
												<h5 class="card-title">${item.sName}</h5>
												
												<!--Show Class Name-->
												<p class="card-text"><b>Class</b>: ${item.cName}<p>
												
											</div>
										`;
										
										// Add button to the card
										resultItem.querySelector(".card-body").appendChild(button);
									
									//Add Result Item to Results
									resultsContainer.appendChild(resultItem);
									
							});
						} 
						
						//If Results are Empty
						else {
							
							//Empty Results Alert
							resultsContainer.innerHTML = `<div class="alert alert-warning">No study guides found.</div>`;
						}
					})
					
					//If there is an Error in Fetching Data
					.catch(error => {
					
						//Stop Displaying Spinner
						spinner.style.display = 'none'; // Hide spinner on error
						
						//Log Error
						console.error("Error fetching data:", error);
						
						//Send Error Alert
						resultsContainer.innerHTML = `<div class="alert alert-danger">Error: ${error.message}</div>`;
						
					});
					
				}
				
			}


		</script>
		
	</body>
	
</html>