<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LewwwwLewww</title>
</head>

<body>
	<h1>LewwwLewww</h1>
	<form action="#" method="post">
		<label for="email">Email:</label> <input type="email" id="email"
			name="email" placeholder="Email" required
			pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}"> <br>
		<br> <label for="password">Password:</label> <input
			type="password" id="password" name="password" placeholder="Password"
			required
			pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}">
		<br>
		<br> <input type="submit" value="Log In">
	</form>
</body>

</html>