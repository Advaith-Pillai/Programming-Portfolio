<?php
header('Content-Type: application/json');

//Enable error reporting for Debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

/*Check if Document is Recieved*/
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_FILES['file'])) {
		
		
	// Get non-file POST data
    $uName = isset($_POST['uName']) ? $_POST['uName'] : null;
    $pWord = isset($_POST['pWord']) ? $_POST['pWord'] : null;
    $sName = isset($_POST['sName']) ? $_POST['sName'] : null;
	$cName = isset($_POST['cName']) ? $_POST['cName'] : null;
		
	
	/*Intake File Variables*/

		//File Name
		$fileName = $_FILES['file']['name'];
		
		//File Temporary Name
		$fileTmpName = $_FILES['file']['tmp_name'];
		
		//Upload Directory Name
		$uploadDir = 'uploads/';
		
		//File Path Name
		$uploadFilePath = $uploadDir . basename($fileName);




    /*Check if upload directory does not exist*/
    if (!file_exists($uploadDir)) {
		
		//Create upload directory
        mkdir($uploadDir, 0777, true);
		
    }




    /*Move uploaded file to the specified directory*/
	
	//Check if File Has Been Uploaded Again
    if (move_uploaded_file($fileTmpName, $uploadFilePath)) {
		
		//Database Connection
		
			//Set Database connection
			$conn = new mysqli('localhost', 'root', '', 'test');

			//Check if database connection is unsuccessful
			if ($conn->connect_error) {
				
				//Connection Failure Message
				die("Connection Failed : " . $conn->connect_error);
				
			}


        //Retrieve Username and Password
        
			//Prepare to get Username and Password from accounts table
			$stmt = $conn->prepare("SELECT * FROM accounts WHERE uName = ? AND pWord = ?");
			
			//Bind the in Variables to the Inputs
			$stmt->bind_param("ss", $uName, $pWord);
			
			//Execute Action
			$stmt->execute();
			
			//Get account details (if the account exists)
			$result = $stmt->get_result();
		
		
		//Storing File Path
		
			//Check if username and password are both correct
			if ($result->num_rows == 1) {
				
				// Insert file details into the registration table
					
					//Prepare to Insert Username and File Details
					$stmt = $conn->prepare("INSERT INTO registration (uName, sName, cName, file_name, file_path) VALUES (?, ?, ?, ?, ?)");
					
					//Bind the variables to the inputs
					$stmt->bind_param("sssss", $uName, $sName, $cName, $fileName, $uploadFilePath);
				
				//Execute Action
				
					//Check if study guide was uploaded
					if ($stmt->execute()) {
						
						//Upload Success Message
						echo json_encode(['message' => 'Study guide uploaded successfully!']);
						
					} 
					
					//Check if study guide was not uploaded
					else {
						
						//Upload Study Guide not Uploaded Message
						echo json_encode(['message' => 'Failed to upload study guide.']);
						
					}
					
				//End Procedure 
				$stmt->close();
			} 
			
			//Check if username and password are incorrect
			else {
				
				// Remove the file (if you want to delete it after the process)
				if (unlink($uploadFilePath)) {
        
					// Invalid username or password Message
					echo json_encode(['message' => 'Invalid username or password.']);
					
				}
				
			}
        
		//End Connection
        $conn->close();
		
    } 
	
	//If File Upload Failed
	else {
		
		//Upload Failure Message
		echo json_encode(['error' => 'Failed to upload file.']);
		
    }
} 

//If no file was uploaded
else {
	
	//No file Uploaded Message
	echo json_encode(['error' => 'No file uploaded.']);
	
}
?>