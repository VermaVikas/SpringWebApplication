<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SWA - Home</title>
<style>
a{
	color: white;
    text-decoration: none;
}
</style>
</head>
<body style="font-family: sans-serif;">
	<!-- <div style="text-align: center;font-size: 18px;background: #2c3e50; color: #ecebe8;padding: 20px;font-family: monospace;">
		Spring Web Application
	</div> -->
	<div style="text-align: center;font-size: 18px;background: #2c3e50; color: #ecebe8;padding: 20px;font-family: monospace;">
		<div style="width:50%; text-align: left;">Spring Web Application</div>
		<div style="font-size: 10px;float:right;text-align: right;"><a target="_blank" href="https://github.com/VermaVikas">Vikas Verma</a></div>
	</div>
	
	<div id="leftPane" style="width:20%;float:left;min-height:500px;border-right: 1px solid;background: #18bc9c;color: white;">
		<div style="width:100%; padding: 10px;">Home Page</div>
		<div style="width:100%; padding: 10px;"><a href="viewData">View Data</a></div>
	</div>

	
	<div id="rightPane" style="width:79.9%; float:right; min-height:500px;">
		<div id="pgHeader" style="width:100%; font-size: 18px; background: #ececec">
 			<div style="padding: 10px 10px 10px 10px;">
 				# Home
 			</div>
		</div>
		<div id="pgBody" style="width:100%; padding: 10px;">
			<p>This is simple Spring web application with JPA.
			<p>Change database details as required in application.properties file.
		</div> 
	</div>

</body>
</html>