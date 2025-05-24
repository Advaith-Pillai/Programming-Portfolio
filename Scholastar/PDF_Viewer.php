<!DOCTYPE html>
<html lang="en">

	<!--Metadata-->
	<head>
	
		<!--Set Language to English-->
		<meta charset="UTF-8">
		
		<!--Set Device Viewing Details-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!--Title-->
		<title>Study Guide Viewer</title>
		
		<!--CSS-->
		
			<!-- Bootstrap Stylesheet-->
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
			
			<!--Main Stylesheet-->
			<link rel="stylesheet" type="text/css" href="css/main.css" />
			
	</head>

	<!--Main Website Body-->
	<body>
	
		<!--Navigation Bar-->
		<?php include("navigation_bar.php");?>
		
    
		<!--Container for PDF Viwer-->
		<div style="margin: auto; width: 80%; height: 1200px;" id="pdfViewer">
			
			<!--Create PDF Viewer-->
			<iframe style="height: 90%; width: 70%;" id="iframe" title="PDF Viewer"></iframe>
		
		</div>
		
    <script>
	
	//Variables
	
		//PDF Viewer
		pdfViewer = document.getElementById("pdfViewer");
    
		//Test Variable
		//localStorage.setItem("study guide", "uploads/Lab Report 5.pdf")
		
		//Retrieve Variable
		const filePath = localStorage.getItem("study guide")
		
		
	//Set PDF
	document.getElementById("iframe").src = filePath + "#toolbar=0&navpanes=0";
		
	

    </script>
	
	</body>
</html>