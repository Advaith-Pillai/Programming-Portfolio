<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Study Guides</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .search-box {
            margin-bottom: 20px;
        }
        .result-item {
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <h1>Search Study Guides</h1>
    <form method="POST">
        <div class="search-box">
            <label for="search">Enter study guide name:</label>
            <input type="text" id="search" name="searchKeyword" placeholder="Type here..." required>
            <button type="submit">Search</button>
        </div>
    </form>

    <div id="results">
        <?php
        // Check if the form was submitted
        if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['searchKeyword'])) {
            $searchKeyword = $_POST['searchKeyword'];

            // Set up Database connection
            $conn = new mysqli('localhost', 'root', '', 'test');
            
            // Check if the connection was successful
            if ($conn->connect_error) {
                // Log the error and stop execution if the connection failed
                error_log("Connection failed: " . $conn->connect_error); 
                die("<p>Unable to connect to the database. Please try again later.</p>");
            }

            // Query to search for study guides based on the search keyword
            $stmt = $conn->prepare("SELECT sName, file_path FROM registration WHERE sName LIKE ?");
            $searchPattern = "%" . $searchKeyword . "%";  // Add wildcard for partial matching
            $stmt->bind_param("s", $searchPattern);  // Bind parameter for the prepared statement
            $stmt->execute();  // Execute the query

            // Get the result of the query
            $result = $stmt->get_result();

            // Check if there are any results and display them
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<div class='result-item'><a href='" . htmlspecialchars($row['file_path']) . "' download>" . htmlspecialchars($row['sName']) . "</a></div>";
                }
            } else {
                echo "<p>No study guides found.</p>";
            }

            // Close the statement and database connection
            $stmt->close();
            $conn->close();
        }
        ?>
    </div>
</body>
</html>