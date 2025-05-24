<!DOCTYPE html>
<html>

	<!--metadata-->
	<head>
			
		<!--Page Title-->
		<title>Upload Your Study Guide! | Scholastar</title>
			
		<!--CSS-->
			
			<!--Bootstrap Stylesheet-->
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
			
		<!--Icon-->
		<link rel="icon" href="images/favicon.ico" type="image/ico">
			
	</head>
  
	<!--Page Contents-->
	<body>
	
		<!--Navigation Bar-->
		<?php include("navigation_bar.php");?>
		
	  
		<!--Form Container-->
		<div class="container vh-100 d-flex justify-content-center align-items-center">
			
			<div class="row col-md-6">
				
				<div class="card card-primary">
			
					<!--Header-->
					<div class="panel-heading text-center">
					
						<h1>Submit Your Study Guide</h1>
						
					</div>
					
					<!--Form Elements-->
					<div class="panel-body">
					
					
					<!--Connect Form to PHP File-->
					<form method="post" enctype="multipart/form-data">
						
						<!--Take Username-->
						<div class="form-group">
						
							<!--Text-->
							<label for="uName">Username</label>
							
							<!--Input-->
							<input type="text"class="form-control mb-3" id="uName" name="uName"/>
							
						</div>
						
						
						<!--Take Password-->
						<div class="form-group">
							
							<!--Text-->
							<label for="pWord">Password</label>
							
							<!--Input-->
							<input type="text" class="form-control mb-3" id="pWord" name="pWord" />
							
						</div>
						
						
						<!--Take Study Guide Name-->
						<div class="form-group">
							
							<!--Text-->
							<label for="sName">Study Guide Name</label>
							
							<!--Input-->
							<input type="text" class="form-control mb-3" id="sName" name="sName" />
							
						</div>
						
						<!--Take Class Name-->
						<div class="form-group">
							
							<!--Text-->
							<label for="cName">Class Name</label>
							
							<!--Input-->
							<input type="text" class="form-control mb-3" id="cName" name="cName" />
							
						</div>
						
						
						<!--Take File-->
						<div class="form-group">
							
							<!--Text-->
							<label for="file">File</label>
							
							<!--Input-->
							<input type="file" class="form-control mb-3" id="file" name="file" required />
							
						</div>
						
						
						<!--Submit Button-->
						<button id="submit" type="button" class="btn btn-primary mb-3">Submit</button>
						
						<!--Results Container-->
						<div id="results"></div>
					  
					</form>
					
				  </div>
				  
				</div>
				
			</div>
			
		</div>
		
		
		
		
		<!--JavaScript-->
		<script>
		console.log("Testing");
			//Variables
			
				//Results container
				const resultsContainer = document.getElementById("results");
		
		document.addEventListener("DOMContentLoaded", function() {
		
			//Check if Search Submit Button is Pressed
			document.getElementById("submit").addEventListener("click", function(event) {
				
				// Prevent form's default submit action
				event.preventDefault();	
			
				// Create a FormData object to send the form data
				const formData = new FormData();
				
				//Get Data from Form
			
					//Username
					const uName = document.getElementById("uName").value.trim();
				
					//Password
					const pWord = document.getElementById("pWord").value.trim();
				
					//Study Guide Name
					const sName = document.getElementById("sName").value.trim();
					
					//Course Name
					const cName = document.getElementById("cName").value.trim();
					
					// Correctly define the fileInput variable
					const fileInput = document.getElementById("file");	
					
				
				//Set Data
				
					// Append form fields to the FormData object
					formData.append('uName', uName);
					formData.append('pWord', pWord);
					formData.append('sName', sName);
					formData.append('cName', cName);
        
					// Append the file to the FormData object
					formData.append('file', fileInput.files[0]);
					
					console.log(formData);
					
					
				//Get Results
				fetch('study_guide_submission_connect.php', {
					
					//Set method to POST
					method: 'POST',
					
					//Send the Keyword as a String
					body: formData
						
				})
				
				//Once Response is Recieved
				.then(response => {
						
						//Log Recieved Response
						console.log("Received response:", response); // Log response for debugging
						
						//Return the Recieved Response
						return response.json();
						
				})
				
				//Once Message is Parsed
				.then(data => {
					
					//Empty Results Alert
					resultsContainer.innerHTML = `<div class="alert alert-success">${data.message}</div>`;
					
				})
				
				//If there is an Error in Fetching Data
				.catch(error => {
						
					//Log Error
					console.error("Error fetching data:", error);
						
					//Send Error Alert
					resultsContainer.innerHTML = `<div class="alert alert-danger">Error: ${error.message}</div>`;
						
				});
				
			});
			
		});
		
		</script>

	</body>
	
</html>
