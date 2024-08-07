<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	background-color: #eee;
	font-family: Arial, sans-serif;
}

.vh-100 {
	height: 100vh;
}

.card {
	border-radius: 25px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.card-header {
	background-color: #007bff;
	color: #ffffff;
	text-align: center;
	font-size: 1.5rem;
	font-weight: bold;
	border-bottom: none;
}

.btn-primary {
	background-color: #007bff;
	border-color: #007bff;
}

.btn-primary:hover {
	background-color: #0056b3;
	border-color: #004085;
}

.form-group label {
	font-weight: bold;
}

.text-center {
	text-align: center;
}
</style>
</head>
<body>
	<section class="vh-100">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Login</p>
									<form action="loginServlet" method="post" class="mx-1 mx-md-4">
										<div class="form-group mb-4">
											<label for="email">Email:</label> <input type="email"
												id="email" name="email" class="form-control" required>
										</div>
										<div class="form-group mb-4">
											<label for="password">Password:</label> <input
												type="password" id="password" name="password"
												class="form-control" required>
										</div>
										<button type="submit" class="btn btn-primary btn-block mb-3">Login</button>
									</form>
									<div class="text-center mt-3">
										<a href="registration.jsp" class="btn btn-link">Not registered?
											Sign up here</a>
									</div>
								</div>
								<div
									class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
									<img
										src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
										class="img-fluid" alt="Sample image">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
