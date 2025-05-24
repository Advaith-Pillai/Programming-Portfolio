<!DOCTYPE html>
<html>

<!--Metadeta-->
<head>
	
	<!--Page Title-->
   <title>Sign Up | Scholastar</title>
	
	<!--CSS-->
		
		<!--Bootstrap Stylesheet-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	
 </head>
 
 <!--Page Contents-->
<body>

	<!--Navigation Bar-->
	<?php include("navigation_bar.php");?>
	
    
	<!--Form Container-->
	<div class="container vh-100 d-flex justify-content-center align-items-center">
	
	
		<div class="row col-md-6">
		
			<div class="card card-default">
			
				<!--Header-->
				<div class="panel-heading text-center">
					
					<!--Text-->
					<h1>Sign Up</h1>
				
				</div>
				
				<!--Form Elements-->
				<div class="panel-body">
            
				<!--Connect Form to PHP File-->
				<form action="account_registration_connect.php" method="post">
              
			  
					<!--Take Username-->
					<div class="form-group">
                
						<label for="uName">Username</label>
                
						<input type="text" class="form-control mb-3" id="uName" name="uName" />
						
					</div>
					
					
					<!--Take Password-->
					<div class="form-group">
					
						
						<label for="pWord">Password</label>
                
						<input type="text" class="form-control mb-3" id="pWord" name="pWord" />
					
					</div>
					
              
					<!--Submit Button-->
					<input type="submit" class="btn btn-primary mb-3" />
            
				</form>
          
			</div>
			
        </div>
		
      </div>
	  
    </div>
	
  </body>
  
</html>
