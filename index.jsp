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
<title>NGUYEN DE THUONG NHAT</title>
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
	<% String[] Placeany = {"Da Nang", "Quang Nam", "Hue", "HCM", "Ha Noi"};
       String[] SexValue = {"Female", "Male", "Others"};
       String[] DayinWeek = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
    %>
	<div class="container pt-5">
		<div class="mt-2 p-5 bg-navy text-white rounded">
			<form action="userconfirm" method="post">
				<div class="mb-3">
					<label class="form-label text-white">First Name</label> <input
						type="text" class="form-control" name="firstName" required>
				</div>
				<div class="mb-3">
					<label class="form-label text-white">Last Name</label> <input
						type="text" class="form-control" name="lastName" required>
				</div>
				<div class="mb-3">
					<label class="form-label text-white">Date Of Birth</label> <input
						type="date" class="form-control" name="dob" required>
				</div>
				<div class="mb-3">
					<label class="form-label text-white">Place Of Birth</label> <select
						class="form-select" name="pob" id="pob" required>
						<% for (String place : Placeany) { %>
						<option value="<%= place %>"><%= place %></option>
						<% } %>
					</select>
				</div>
				<div class="mb-3">
					<label class="form-label text-white">Sex:</label>
					<% for (String sex : SexValue) { %>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="sex"
							id="<%= sex %>" value="<%= sex %>"
							<%= sex.equals("Male") ? " checked" : "" %>> <label
							class="form-check-label text-white" for="<%= sex %>"><%= sex %></label>
					</div>
					<% } %>
				</div>
				<div class="mb-3">
					<label class="form-label text-white">Free Day:</label>
					<% for (String day : DayinWeek) { %>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" id="<%= day %>"
							name="freeDay" value="<%= day %>"
							<%= day.equals("Sunday") ? " checked" : "" %>> <label
							class="form-check-label text-white" for="<%= day %>"><%= day %></label>
					</div>
					<% } %>
				</div>
				<div class="pt-3">
					<input type="submit" value="Submit" class="btn btn-primary">
					<input type="button" value="Login" class="btn btn-secondary mt-1"
						onclick="location.href='login.jsp'">
				</div>
			</form>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
