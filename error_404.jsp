<!DOCTYPE html>
<html>
<head>
<title>Error 404</title>
<style>
body {
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #ffffff;
}

.error-container {
	text-align: center;
}

.error-text {
	font-size: 4em;
	font-weight: bold;
	color: #001f3f; /* Màu navy */
	margin-bottom: 20px;
}

.circle {
	width: 200px;
	height: 200px;
	border: 5px solid #001f3f; /* Viền màu navy */
	border-radius: 50%; /* Hình tròn */
	background-color: #ffffff; /* Màu nền trắng */
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative; /* Sử dụng relative positioning */
}

.exclamation {
	font-size: 6em; /* Kích thước của dấu chấm than */
	color: #001f3f; /* Màu navy */
	position: absolute;
}
</style>
</head>
<body>
	<div class="error-container">
		<div class="error-text">404</div>
		<div class="circle">
			<div class="exclamation">!</div>
		</div>
	</div>
</body>
</html>
