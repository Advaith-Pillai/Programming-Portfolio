<?php

/*Intake Username and Password Variables*/

	//Username
	$uName = $_POST['uName'];
	
	//Password
	$pWord = $_POST['pWord'];

// Database connection
	
	//Set Database connection
	$conn = new mysqli('localhost','root','','test');
	
	//Check if database connection is unsuccessful
	if($conn->connect_error){
		
		//Connection Failure Message
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
		
	} 
	
	//Check if database connection is successful
	else {
		
		// Insert username and password into the registration table
		
			//Prepare to Insert Username and Password
			$stmt = $conn->prepare("insert into accounts(uName, pWord) values(?, ?)");
			
			//Bind the variables to the inputs
			$stmt->bind_param("ss", $uName, $pWord);
			
			//Execute Action
			$execval = $stmt->execute();
			echo $execval;
			
			//Sucess Message
			echo "Registration successfully...";
		
			//End Procedure
			$stmt->close();
			
		//Close Database Connection
		$conn->close();
	}
?>