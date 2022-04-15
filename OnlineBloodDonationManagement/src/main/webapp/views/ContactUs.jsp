<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
</head>
<body>
	<%@include file="Header.jsp"%>
	<!-- Best  -->
	<div id="about" class="Best">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>Contact Us</h2>
						<p>The Blood Donation Management System project is programmed
							in order to help the humans or patients who are seeking blood at
							a particular location. This project is designed in such a way
							that it keeps detailed information as well as separate
							information of all the locations where the blood is available and
							what kind of blood is available and in how much quantity.</p>
					</div>
				</div>
			</div>


		</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	<!-- end Best -->
	<!-- contact -->
	<!-- end contact -->
	<!-- clients -->
	<div id="donors" class="clients ">
		<div class="container">
			<div class="row d_flex">
				<div class="col-md-8 offset-col-md-1">
					<div class="card rounded shadow-lg">

						<div class="card-body">
							<h2 class="titlepage font-weight-bold">Contact</h2>
							<p>Fill up the form to connect with us.</p>
							<form>

								<div class="form-group col-md-12">
									<label for="name">Name</label> <input type="text"
										class="form-control" id="name" placeholder="Name" />
								</div>
								<div class="form-group col-md-12">
									<label for="email">Email</label> <input type="email"
										class="form-control" id="name" placeholder="E-mail" />
								</div>
								<div class="form-group col-md-12">
									<label for="name">Mobile</label> <input type="text"
										class="form-control" id="name" placeholder="Mobile" />
								</div>
								<div class="form-group col-md-12">
									<label for="name">Message</label>
									<textarea rows="3" class="form-control"
										placeholder="Message for us!" name="msg" id="msg"></textarea>
								</div>

								<button type="submit" class="btn cardBg text-white">Submit</button>
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