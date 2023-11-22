<!DOCTYPE html>
<html>
<head>
<title>Edit User</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #ffffff; /* Màu nền bên ngoài là trắng */
	color: #000000; /* Màu chữ mặc định cho nội dung */
	padding-top: 50px;
}

.container {
	background-color: #001f3f; /* Màu nền navy trong khối container */
	color: #ffffff; /* Màu chữ trắng trong khối container */
	max-width: 600px;
	padding: 20px;
	border-radius: 10px;
	margin: auto; /* Canh giữa khối container */
	margin-top: 20px;
	/* Khoảng cách từ container đến nền trắng bên ngoài */
}

input[type="text"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: none;
	border-radius: 5px;
}

input[type="submit"] {
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	background-color: #ffffff; /* Màu nền trắng cho nút Submit */
	color: #001f3f; /* Màu chữ navy cho nút Submit */
}
</style>
</head>

<body>
	<div class="container">
		<form action="edituser" method="post">
			<p>FirstName:</p>
			<input type="text" name="firstName" value="${param.firstName}" /> <br />
			<p>LastName:</p>
			<input type="text" name="lastName" value="${param.lastName}" /> <br />
			<p>POB:</p>
			<input type="text" name="pob" value="${param.pob}" /> <br /> <input
				type="submit" value="Submit" />
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
