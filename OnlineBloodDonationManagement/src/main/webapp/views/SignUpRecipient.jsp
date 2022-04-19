<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/SignUp.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="bootstrap/js/form.js"></script>
<title>SignUp</title>
</head>
<body>
	<%@include file="Header.jsp"%>
	<div class="border border-grey w-75 mt-5 mb-5 mx-auto">
		<div class="jumbotron jumbotron-background">
			<h2 class="text-center">Sign Up as Recipient</h2>
			<h3 class="text-center"><a href="signup" class="text-white">Sign Up as Donor? Click</a></h3>
			<form action="/add_recipient" method="post">
				<label class="text-danger"><c:if test="${existRecipient}">Recipient already exists!</c:if></label>
				
				<div class="w-75 mb-3 mt-5 mx-auto">
					<label for="firstName" class="form-label">First Name:</label> <input
						type="text" id="firstName" name="firstName" class="form-control"
						placeholder="Enter First Name" required />
				</div>

				<div class="w-75 mb-3 mt-5 mx-auto">
					<label for="lastName" class="form-label">Last Name:</label> <input
						type="text" id="lastName" name="lastName" class="form-control"
						placeholder="Enter Last Name" required />
				</div>

				<div class="w-75 mb-3 mt-5 mx-auto">
					<label for="gender" class="form-label">Gender:</label> <select
						id="gender" name="gender" class="form-control" required>
						<option value="-1" selected="selected">Select Your Gender</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
						<option value="Others">Others</option>
					</select>
				</div>

				<div class="w-75 mb-3 mt-5 mx-auto">
					<label for="age" class="form-label">Age:</label> <input
						type="number" id="age" name="age" class="form-control"
						onchange="validateAge()" placeholder="Enter Age" required />
					<div>
						<span id='ageError'></span>
					</div>
				</div>

				<div class="w-75 mb-3 mt-5 mx-auto">
					<label for="bloodGroupId" class="form-label">Blood Group:</label> <select
						id="bloodGroupId" name="bloodGroupId" class="form-control"
						required>
						<option value="-1" selected="selected">Select Your Blood
							Group</option>
						<c:forEach var="group" items="${bloodGroupList }">
							<option value="${group.bloodGroupId }">${group.bloodGroup }</option>
						</c:forEach>
					</select>
				</div>

				<div class="w-75 mb-3 mt-5 mx-auto">
					<label for="stateId" class="form-label">State:</label> <select
						id="stateId" name="stateId" class="form-control" required
						onchange="getCity()">
						<option value="-1" selected="selected">Select State</option>
						<c:forEach var="state" items="${stateList }">
							<option value="${state.stateId }">${state.stateName }</option>
						</c:forEach>
					</select>
				</div>

				<div class="w-75 mb-3 mt-5 mx-auto">
					<label for="cityId" class="form-label">City:</label> <select
						id="cityId" name="cityId" class="form-control" required>
						<option value="-1" selected="selected">Select City</option>
					</select>
				</div>

				<div class="w-75 mb-3 mt-5 mx-auto">
					<label for="location" class="form-label">Location:</label> <input
						type="text" id="location" name="location" class="form-control"
						placeholder="Enter Location" required />
				</div>

				<div class="w-75 mb-3 mt-5 mx-auto">
					<label for="pincode" class="form-label">Pincode:</label> <input
						type="number" id="pincode" name="pincode" class="form-control"
						placeholder="Enter Pincode" required />
				</div>

				<div class="w-75 mb-3 mt-5 mx-auto">
					<label for="phoneNumber" class="form-label">Phone Number:</label> <input
						type="tel" id="phoneNumber" name="phoneNumber"
						onchange="validatePhone()" class="form-control"
						placeholder="Enter Phone Number" required />
					<div>
						<span id='phoneError'></span>
					</div>
				</div>

				<div class="w-75 mb-3 mt-5 mx-auto">
					<label for="email" class="form-label">Email:</label> <input
						type="email" id="email" name="email" class="form-control"
						placeholder="Enter Email" required />
				</div>

				<div class="w-75 mb-3 mt-5 mx-auto">
					<label for="password" class="form-label">Password:</label> <input
						type="password" id="password" name="password" onkeyup='check();'
						onchange="validatePassword()" class="form-control"
						placeholder="Enter Password" required />
					<div>
						<span id='alertMsg'></span>
					</div>
				</div>

				<div class="w-75 mb-3 mt-5 mx-auto">
					<label for="confirmPassword" class="form-label">Confirm
						Password:</label> <input type="password" id="confirmPassword"
						name="confirmPassword" class="form-control" onkeyup='check();'
						placeholder="Confirm Password" required />
					<div>
						<span id='message'></span>
					</div>
				</div>

				<div class="w-75 mt-2 mx-auto row">
					<div class="col text-right">
						<input type="submit" class="btn btn-primary w-25"
							placeholder="Sign Up" value="Sign Up">
					</div>
				</div>
			</form>
		</div>

	</div>
	<%@include file="Footer.jsp"%>
</body>
</html>