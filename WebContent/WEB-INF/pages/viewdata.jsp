<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SWA - View All Data</title>
<style>
a{
	color: white;
    text-decoration: none;
}

.tblHdr{
	width:25%;
	text-align:center;
	padding: 8px;
	background: #426d9e;
    color: aliceblue;
}
.tblCell{
	text-align:center;
	padding: 8px;
}

</style>
</head>
<body style="font-family: sans-serif;">
	<div style="text-align: center;font-size: 18px;background: #2c3e50; color: #ecebe8;padding: 20px;font-family: monospace;">
		<div style="width:50%; text-align: left;">Spring Web Application</div>
		<div style="font-size: 10px;float:right;text-align: right;"><a target="_blank" href="https://github.com/VermaVikas">Vikas Verma</a></div>
	</div>

	<div id="leftPane" style="width:20%;float:left;min-height:500px;border-right: 1px solid;background: #18bc9c;color: white;">
		<div style="width:100%; padding: 10px;"><a href="home">Home Page</a></div>
		<div style="width:100%; padding: 10px;"><a href="viewData">View Data</a></div>
	</div>
	
	
	<div id="rightPane" style="width:79.9%; float:right; min-height:500px;">
		<div id="pgHeader" style="width:100%; font-size: 18px; background: #ececec">
 			<div style="padding: 10px 10px 10px 10px;">
 				# View Data
			</div>
		</div>
		
		<div id="pgBody" style="width:100%; padding: 10px;">
			<table style="width:80%">
				<tr>
					<td class="tblHdr">id</td>
			        <td class="tblHdr">name</td>
			        <td class="tblHdr">email</td>
			        <td class="tblHdr">state</td>	
				</tr>
					
				<!-- ACCESSING LIST OF DATA dataList ADDED IN model FROM CONTROLLER -->
				<c:forEach var="list" items="${dataList}">
			       	<tr>
			       		<td class="tblCell"><c:out value="${list.id}"/></td>
			       		<td class="tblCell"><c:out value="${list.name}"/></td>
			       		<td class="tblCell"><c:out value="${list.email}"/></td>
			       		<td class="tblCell"><c:out value="${list.state}"/></td>
			       	</tr>
				</c:forEach>
			
			</table>
		</div> 
	
	</div>

</body>
</html>