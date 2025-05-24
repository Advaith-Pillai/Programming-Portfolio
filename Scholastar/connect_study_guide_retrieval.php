<?php

/*Intake Username and Password Variables*/
	
	//Study Guide Name
	$sName = $_POST['sName'];

		//Database Connection
		
			//Set Database connection
			$conn = new mysqli('localhost', 'root', '', 'test');

			//Check if database connection is unsuccessful
			if ($conn->connect_error) {
				
				//Connection Failure Message
				die("Connection Failed : " . $conn->connect_error);
				
			}
			
		//Check if Database Connection is Successful
		else {


        //Retrieve Username and Password
        
			//Prepare to get Username and Password from accounts table
			$stmt = $conn->prepare("SELECT * FROM registration WHERE sName = ?");
			
			//Bind the in Variables to the Inputs
			$stmt->bind_param("s", $sName);
			
			//Execute Action
			$stmt->execute();
			
			//Get account details (if the account exists)
			$result = $stmt->get_result();
		
		
		
		//Storing File Path
		
			//Check if username and password are both correct
			if ($result->num_rows == 1) {
				
				while ($row = $result->fetch_assoc()) {
        
					// Get the upload directory name
					$uploadDir = $row['file_path'];
					echo "Upload Directory: " . htmlspecialchars($uploadDir);
					
					}
				
			} 
			
			//Check if username and password are incorrect
			else {
				
				// Remove the file (if you want to delete it after the process)
				if (unlink($uploadFilePath)) {
        
					// Invalid username or password Message
					echo "Invalid username or password.";
					
				}
				
			}
        
		//End Connection
        $conn->close();

//Download File
			
	// Check if the file exists
	if (!empty($uploadDir) && file_exists($uploadDir)) {
		// Set headers for download
		header('Content-Description: File Transfer');
		header('Content-Type: application/octet-stream');
		header('Content-Disposition: attachment; filename="' . basename($uploadDir) . '"');
		header('Expires: 0');
		header('Cache-Control: must-revalidate');
		header('Pragma: public');
		header('Content-Length: ' . filesize($uploadDir));
		
		// Clear output buffer before reading the file
		ob_clean();
		flush();

		// Read the file
		readfile($uploadDir);
		exit; // Stop further script execution
	} else {
		echo "File not found.";
	}
		
 
} 


?>