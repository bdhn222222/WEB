<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Confirmed</title>
<style>
body {
	background-color: #f0f0f0;
}

.container {
	max-width: 600px;
}

.bg-navy {
	background-color: #001f3f;
}

.text-white {
	color: #ffffff;
}
</style>
</head>
<body>
	<%@ page import="com.java.be.User"%>
	<div class="container pt-5">
		<div class="mt-2 p-5 bg-navy text-white rounded">
			<p>
				You will shortly receive FirstName confirmation at
				${user.firstName}. <br> You will shortly receive LastName
				confirmation at ${user.lastName}. <br> You will shortly receive
				DOB confirmation at ${user.dob}. <br> You will shortly receive
				POB confirmation at ${user.pob}. <br> You will shortly receive
				SEX confirmation at ${user.sex}. <br> You will shortly receive
				freeDay confirmation at ${user.freeDay}. <br>
			</p>
		</div>
		<div class="pt-3">
			<input type="button" value="Edit" class="btn btn-primary mt-1"
				onclick="location.href='edituser.jsp?firstName=${user.firstName}&lastName=${user.lastName}&dob=${user.dob}&pob=${user.pob}&sex=${user.sex}&freeDay=${freeDayStr}'">
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
