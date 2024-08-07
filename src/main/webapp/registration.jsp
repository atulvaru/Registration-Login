<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
.vh-100 {
	height: 100vh;
}

.card {
	border-radius: 25px;
}

.form-outline {
	position: relative;
	margin-bottom: 1rem;
}

.form-outline input {
	border-radius: 0.25rem;
	padding: 0.75rem;
	width: 100%;
}

.form-outline label {
	position: absolute;
	top: -10px;
	left: 15px;
	background: #fff;
	padding: 0 5px;
	font-weight: bold;
}

.form-check-label {
	margin-bottom: 0;
}

.text-center {
	text-align: center;
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
</style>
</head>
<body>
	<section class="vh-100" style="background-color: #eee;">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign
										up</p>
									<form class="mx-1 mx-md-4" action="registerPage" method="post">
										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="flex-fill form-group  mb-0">
												<label for="name">Your Name</label> <input type="text"
													id="name" name="name" class="form-control" required />
											</div>

										</div>
										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-group  flex-fill mb-0">
												<label for="email">Your Email</label> <input type="email"
													id="email" name="email" class="form-control" required />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-group  flex-fill mb-0">
												<label for="password">Password</label> <input
													type="password" id="password" name="password"
													class="form-control" required />
											</div>
										</div>
										<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
											<button type="submit" class="btn btn-primary btn-lg">Register</button>
										</div>
									</form>
									<div class="text-center mt-3">
										<a href="login.jsp" class="btn btn-link">Already have an
											account? Login</a>
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
