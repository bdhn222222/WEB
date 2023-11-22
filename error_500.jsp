<!DOCTYPE html>
<html>
<head>
<title>Error 500</title>
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

.triangle {
	width: 0;
	height: 0;
	border-left: 100px solid transparent;
	border-right: 100px solid transparent;
	border-bottom: 173px solid #001f3f; /* Màu nền tam giác là navy */
	position: relative;
}

.exclamation {
	font-size: 6em; /* Kích thước lớn hơn */
	color: yellow; /* Màu dấu chấm than màu vàng */
	position: absolute;
	left: -15px; /* Điều chỉnh vị trí sang trái */
	top: 43px; /* Điều chỉnh vị trí đứng đắn */
}
</style>
</head>
<body>
	<div class="error-container">
		<div class="error-text">500</div>
		<div class="triangle">
			<div class="exclamation">!</div>
		</div>
	</div>
</body>
</html>
