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
<script type="text/javascript">
	function getCity() {
		let stateId = $("#stateId").val();
		console.log(stateId);
		if (stateId != null) {
			var ajax = new XMLHttpRequest();
			var url = "fetchCity?stateId=" + stateId;
			document.getElementById("cityId").innerHTML = "<option value='-1' selected='selected'>Select City</option>";
			ajax.onreadystatechange = function() {
				if (ajax.readyState == 4) {
					let res = ajax.responseText;
					let result = JSON.parse(res);
					console.log(result)
					var count = Object.keys(result).length;
					for (let i = 0; i < count; i++) {
						let cityList = "<option value='"+result[i]["cityId"]+"'>"
								+ result[i]["cityName"] + "</option>";
						document.getElementById("cityId").innerHTML += cityList;
					}
				}
			};
			ajax.open("GET", url, true);
			ajax.send(null);
		}
	}
	
	function validatePassword() {
		var password = document.getElementById('password').value;
		if (password.length < 6) {
			document.getElementById('alertMsg').style.color = 'red';
			document.getElementById('alertMsg').innerHTML = 'Password must be of 6 characters or more!';
			document.getElementById('password').style.color = 'red';
			return false;
		}
		else{
			document.getElementById('alertMsg').innerHTML = '';
			document.getElementById('password').style.color = 'green';
			return false;
		}
	}
	
	var check = function() {
		if (document.getElementById('password').value === document
				.getElementById('confirmPassword').value) {
			document.getElementById('message').style.color = 'green';
			document.getElementById('message').innerHTML = 'matching...';
			document.getElementById('confirmPassword').style.color = 'green';
		} else {
			document.getElementById('confirmPassword').style.color = 'red';
			document.getElementById('message').style.color = 'red';
			document.getElementById('message').innerHTML = 'not matching...';
		}
	}
	
	function validatePhone(){
		var phoneNumber = document.getElementById('phoneNumber').value;
		if (phoneNumber.length != 10) {
			document.getElementById('phoneError').style.color = 'red';
			document.getElementById('phoneError').innerHTML = 'Phone Number must be of 10 digits!';
			document.getElementById('phoneNumber').style.color = 'red';
			return false;
		}
		else{
			document.getElementById('phoneError').innerHTML = '';
			document.getElementById('phoneNumber').style.color = 'green';
			return false;
		}
	}
	
	function validateAge(){
		var age = document.getElementById('age').value;
		if (age < 20 || age > 60) {
			document.getElementById('ageError').style.color = 'red';
			document.getElementById('ageError').innerHTML = 'To donate blood, age must be in the range 20-60!';
			document.getElementById('age').style.color = 'red';
			return false;
		}
		else{
			document.getElementById('ageError').innerHTML = '';
			document.getElementById('age').style.color = 'green';
			return false;
		}
	}
</script>
<title>SignUp</title>
</head>
<body>
	<%@include file="Header.jsp"%>
	<div class="border border-grey w-75 mt-5 mb-5 mx-auto">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#donor" role="tab" aria-controls="donor">Donor</a>
			</li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#recipient" role="tab" aria-controls="recipient">Recipient</a></li>
		</ul>

		<div class="tab-content">
			<div class="tab-pane active" id="donor" role="tabpanel">
				<div class="jumbotron jumbotron-background">
					<h2 class="text-center">Sign Up as Donor</h2>
					<form action="/add_donor" method="post">
						<label class="text-success"><c:if test="${addDonor}">Donor added successfully!</c:if></label>
						<label class="text-danger"><c:if test="${existDonor}">Donor already exists!</c:if></label>

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
								<option value="-1" selected="selected">Select Your
									Gender</option>
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
							<label for="bloodGroupId" class="form-label">Blood Group:</label>
							<select id="bloodGroupId" name="bloodGroupId"
								class="form-control" required>
								<option value="-1" selected="selected">Select Your
									Blood Group</option>
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
							<label for="phoneNumber" class="form-label">Phone Number:</label>
							<input type="tel" id="phoneNumber" name="phoneNumber"
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
			<div class="tab-pane" id="recipient" role="tabpanel">
				<div class="jumbotron jumbotron-background">
					<h2 class="text-center">Sign Up as Recipient</h2>
					<form action="/add_recipient" method="post">
						<label class="text-success"><c:if test="${addRecipient}">Recipient added successfully!</c:if></label>
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
								<option value="-1" selected="selected">Select Your
									Gender</option>
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
							<label for="bloodGroupId" class="form-label">Blood Group:</label>
							<select id="bloodGroupId" name="bloodGroupId"
								class="form-control" required>
								<option value="-1" selected="selected">Select Your
									Blood Group</option>
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
							<label for="phoneNumber" class="form-label">Phone Number:</label>
							<input type="tel" id="phoneNumber" name="phoneNumber"
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
			<div class="tab-pane" id="hospital" role="tabpanel">
				<div class="jumbotron jumbotron-background">
					<h2 class="text-center">Hospital Registration</h2>
					<form action="HospitalRegister" method="post">

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="hospitalname" class="form-label">Hospital
								Name:</label> <input type="text" id="donorId" name="donorId"
								class="form-control" placeholder="Enter Hospital Name"
								readonly="readonly">
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="hospitalregistrationid" class="form-label">Hospital
								Registration ID:</label> <input type="text" id="hospitalregistrationid"
								name="hospitalregistrationid" class="form-control"
								placeholder="Enter Hospital Registration ID">
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="Hospitaltype" class="form-label">Hospital
								Type :</label> <select id="government" name="government"
								class="form-control">
								<option value="-1" selected="selected">Select Hospital
									Type</option>
								<option value="Government">Government</option>
								<option value="governmentautonomous">Government
									Autonomous</option>
								<option value="Private">Private</option>
							</select>
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="hospitaladdress" class="form-label">Hospital
								Address :</label> <input type="text" id="hospitaladdress"
								name="hospitaladdress" class="form-control"
								placeholder="Enter Hospital Address">
						</div>



						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="state" class="form-label">State:</label> <select
								id="state" name="state" class="form-control"
								onchange="getCity()">
								<option value="-1" selected="selected">Select State</option>
								<option value="Bihar-">Bihar</option>

							</select>
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="city" class="form-label">City:</label> <select
								id="city" name="city" class="form-control">
								<option value="-1" selected="selected">Select City</option>

								<option value="Araria">Araria</option>
								<option value="Arwal">Arwal</option>
								<option value="Aurangabad">Aurangabad</option>
								<option value="Banka">Banka</option>
								<option value="Begusarai">Begusarai</option>
								<option value="Bhagalpur">Bhagalpur</option>
								<option value="Ara">Ara</option>
								<option value="Buxar">Buxar</option>
								<option value="Darbhanga">Darbhanga</option>
								<option value="Motihari">Motihari</option>
								<option value="Gaya">Gaya</option>
								<option value="Gopalganj">Banka</option>
								<option value="Jamui">Begusarai</option>
								<option value="Jehanabad">Bhagalpur</option>
								<option value="Khagaria">Bhojpur</option>
								<option value="Kishanganj">Buxar</option>
								<option value="Kaimur">Kaimur</option>
								<option value="Katihar">Katihar</option>
								<option value="Lakhisarai">Lakhisarai</option>
								<option value="Madhubani">Madhubani</option>
								<option value="Munger">Munger</option>
								<option value="Madhepura">Madhepura</option>
								<option value="Muzaffarpur">Muzaffarpur</option>
								<option value="Bihar Sharif">Bihar Sharif</option>
								<option value="Nawada">Nawada</option>
								<option value="Patna">Patna</option>
								<option value="Purnia">Purnia</option>
								<option value="Sasaram">Sasaram</option>
								<option value="Saharsa">Saharsa</option>
								<option value="Samastipur">Samastipur</option>
								<option value="Sheohar">Sheohar</option>
								<option value="Sheikhpura">Sheikhpura</option>
								<option value="Chhapra">Chhapra</option>
								<option value="Sitamarhi">Sitamarhi</option>
								<option value="Supaul">Supaul</option>
								<option value="Siwan">Siwan</option>
								<option value="Hajipur">Hajipur</option>
								<option value="Bettiah">Bettiah</option>

							</select>
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="location" class="form-label">Location:</label> <input
								type="text" id="location" name="location" class="form-control"
								placeholder="Enter Location">
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="pincode" class="form-label">Pincode:</label> <input
								type="number" id="pincode" name="pincode" class="form-control"
								placeholder="Enter Pincode">
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="contactNumber" class="form-label">Landline
								Contact Number:</label> <input type="tel" id="contactNumber"
								name="contactNumber" class="form-control"
								placeholder="Enter Landline Number">
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="contactNumber" class="form-label">Mobile
								Contact Number:</label> <input type="tel" id="contactNumber"
								name="contactNumber" class="form-control"
								placeholder="Enter Mobile Number">
						</div>


						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="email" class="form-label">Email:</label> <input
								type="email" id="email" name="email" class="form-control"
								placeholder="Enter Email">
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="password" class="form-label">Password:</label> <input
								type="password" id="password" name="password"
								class="form-control" placeholder="Enter Password" value="">
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="cpassword" class="form-label">Confirm
								Password:</label> <input type="password" id="cpassword" name="cpassword"
								class="form-control" placeholder="Confirm Password" value="">
						</div>

						<div class="w-75 mb-3 mt-2 mx-auto row">
							<div class="col text-right">
								<input type="submit" name="register"
									class="btn btn-primary w-25" placeholder="Sign Up"
									value="Sign Up">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="Footer.jsp"%>
	<script>
  $(function () 
    $('#myTab a:last').tab('show')
  )
</script>
</body>
</html>