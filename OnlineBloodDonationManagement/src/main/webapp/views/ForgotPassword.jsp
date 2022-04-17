<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
</head>
<body>
	<%@include file="Header.jsp"%>
	<!-- Best  -->
	<div id="about" class="Best">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>Forgot Password</h2>
						<p>You don't remember your password? It's alright! Find it
							here!</p>
					</div>
				</div>
			</div>


		</div>
	</div>
	<div id="donors" class="clients ">
		<div class="container">
			<div class="row d_flex">
				<div class="col-md-8 offset-col-md-1">
					<div class="card rounded shadow-lg">
						<div class="card-body">
							<h2 class="titlepage font-weight-bold">Find your account</h2>
							<form>

								<div class="form-group col-md-12">
									<label for="email">Email</label> <input type="email"
										class="form-control" id="name" placeholder="Enter E-mail" />
								</div>

								<div class="form-group col-md-12 text-right">
									<button type="submit" class="btn btn-primary text-white">Submit</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end clients -->
	<%@include file="Footer.jsp"%>
</body>
</html>