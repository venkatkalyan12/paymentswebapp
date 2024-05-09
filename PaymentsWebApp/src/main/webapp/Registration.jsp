<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<link rel="icon" type="image/x-icon"
	href="https://static.vecteezy.com/system/resources/previews/000/354/777/original/bank-vector-icon.jpg">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<style>
body {
	background-image:
		url('https://png.pngtree.com/background/20230619/original/pngtree-opened-bank-safe-in-3d-render-picture-image_3760932.jpg');
	background-size: cover;
	background-attachment: fixed;
}

.register {
	height: 40px;
	width: 500px;
}
</style>
</head>
<body>
	<center>

		<h1 style="font-size: xxx-large; color: rgb(255, 255, 255);">PAYMENT
			WEBAPP</h1>
		<br> <br>
		<br>
		<h1 style="color: rgb(255, 255, 255); font-size: xxx-large;">REGISTER</h1>
		<br>
		<div class="Register">

			<form action="RegisterDAO" method="post">
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="floatingInput"
						placeholder="" name="firstname"> <label for="floatingInput">First
						Name</label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="floatingInput"
						placeholder="" name="lastname"> <label for="floatingInput">Last
						Name</label>
				</div>
				<div class="form-floating">
					<input type="date" class="form-control" id="floatingInput"
						placeholder="DD/MM/YY" name="DateOfBirth"> <label for="floatingInput">Date
						Of Birth</label>
				</div>
				<br>
				<div class="form-floating">
					<input type="number" class="form-control" id="floatingInput"
						placeholder="1234564889" name="MobileNo"> <label for="floatingInput">Mobile
						No</label>
				</div>
				<br>
				<div class="form-floating">
					<input type="email" class="form-control" id="floatingInput"
						placeholder="name@example.com" name="Email"> <label for="floatingInput">Email
						address</label>
				</div>
				<br>
				<div class="form-floating">
					<input type="text" class="form-control" id="floatingInput"
						placeholder="" name="Address"> <label for="floatingInput">Address</label>
				</div>
				<br>
				<div class="form-floating">
					<input type="password" class="form-control" id="floatingPassword"
						placeholder="Password" name="password"> <label for="floatingPassword">Password</label>
				</div>
				<br>
				<button type="submit" class="btn btn-success">SUBMIT</button>
				<br>
			</form>
			<br>

			<div class="Login">
				<a href="login.html"
					style="text-decoration: none; color: rgb(240, 229, 229);"><h3>Already
						A User</h3> </a>
			</div>
			<br>
		</div>
		<br>
		<br>
	</center>
</body>
</html>
