<?php
header('Content-Type: application/json');

//Enable error reporting for Debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

//Check if Server makes a Post Request
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	
    // Read the input JSON data
    $input = file_get_contents('php://input');
    $data = json_decode($input, true);
	
	// Log the raw POST data
	error_log("Raw POST data: " . $input);
	
	//If Input is Invalid
    if (json_last_error() !== JSON_ERROR_NONE) {
        echo json_encode(['error' => 'Invalid JSON input']);
        exit;
    }

    // Ensure a search keyword is provided
    if (isset($data['searchKeyword']) && !empty($data['searchKeyword'])) {
        
		//Set Search Keyword
		$searchKeyword = $data['searchKeyword'];

        //Connect to Database
        $conn = new mysqli('localhost', 'root', '', 'test');
		
			//Check for Connection Error
			if ($conn->connect_error) {
				echo json_encode(['error' => 'Database connection failed: ' . $conn->connect_error]);
				exit;
			}
		
			//Database Query
			
				//Query Statment
				$stmt = $conn->prepare("SELECT sName, cName, file_path FROM registration WHERE sName LIKE ? OR cName LIKE ?");
					
					//Convert Search Keyword into Search Pattern for Query
					$searchPattern = '%' . $searchKeyword . '%';
			
					//Bind Input Variables to Query Parameters
					$stmt->bind_param('ss', $searchPattern, $searchPattern);
					
					//Execute Query
					$stmt->execute();
					
					//Obtain Result
					$result = $stmt->get_result();
		
		
					//Producing output
					
						//Create Output Array
						$output = [];
						
						//Go Through Each Result
						while ($row = $result->fetch_assoc()) {
							
							//Add Result to Output Array
							$output[] = $row;
					
						}
					
				//End Database Query Statment
				$stmt->close();
		
		//Close Database Connection		
        $conn->close();

        //Check if Results are Empty
        if (empty($output)) {
            echo json_encode(['message' => 'No results found']);
            exit;
        }

        // Return the result as JSON
        echo json_encode($output);
    } else {
        echo json_encode(['error' => 'No search keyword provided']);
    }
} else {
    echo json_encode(['error' => 'Invalid request method']);
}