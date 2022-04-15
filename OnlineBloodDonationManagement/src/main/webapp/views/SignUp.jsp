<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/SignUp.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
					<form>
						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="donorId" class="form-label">Donor ID:</label> <input
								type="text" id="donorId" name="donorId" class="form-control"
								placeholder="Enter Donor ID" value="" readonly="readonly" />
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="firstName" class="form-label">First Name:</label> <input
								type="text" id="firstName" name="firstName" class="form-control"
								placeholder="Enter First Name" value="" />
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="lastName" class="form-label">Last Name:</label> <input
								type="text" id="lastName" name="lastName" class="form-control"
								placeholder="Enter Last Name" value="" />
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							Gender:<select id="gender" name="gender" class="form-control">
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
								placeholder="Enter Age" value="" />
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="bloodGroup" class="form-label">Blood Group:</label> <select
								id="bloodGroup" name="bloodGroup" class="form-control">
								<option value="-1" selected="selected">Select Your
									Blood Group</option>
								<option value="A-">A-</option>
								<option value="A+">A+</option>
								<option value="B-">B-</option>
								<option value="B+">B+</option>
								<option value="AB+">AB+</option>
								<option value="AB-">AB-</option>
								<option value="O+">O+</option>
								<option value="O-">O-</option>
							</select>
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="state" class="form-label">State:</label> <select
								id="state" name="state" class="form-control">
								<option value="-1" selected="selected">Select State</option>
								<option value="Bihar">Bihar</option>
								<option value="Uttar Pradesh">Uttar Pradesh</option>
							</select>
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="city" class="form-label">City:</label> <select
								id="city" name="city" class="form-control">
								<option value="-1" selected="selected">Select City</option>
								<option value="Patna">Patna</option>
								<option value="Gaya">Gaya</option>
								<option value="Kanpur">Kanpur</option>
							</select>
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="location" class="form-label">Location:</label>
							<input type="text" id="location" name="location"
								class="form-control" placeholder="Enter Location" value="" />
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="pincode" class="form-label">Pincode:</label> <input
								type="number" id="pincode" name="pincode" class="form-control"
								placeholder="Enter Pincode" value="" />
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="phoneNumber" class="form-label">Phone Number:</label>
							<input type="tel" id="phoneNumber" name="phoneNumber"
								class="form-control" placeholder="Enter Phone Number" value="" />
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="donorEmail" class="form-label">Email:</label>
							<input type="email" id="donorEmail" name="donorEmail"
								 class="form-control" placeholder="Enter Email"
								value="" />
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="donorPassword" class="form-label">Password:</label>
							<input type="password" id="donorPassword"
								name="donorPassword" class="form-control"
								placeholder="Enter Password" value="" />
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="donorCPassword" class="form-label">Confirm
								Password:</label> <input type="password" id="donorCPassword"
								name="donorCPassword" class="form-control"
								placeholder="Confirm Password" value="" />
						</div>

						<div class="w-75 mt-2 mx-auto row">
							<div class="col text-right">
								<input type="submit" name="register"
									class="btn btn-primary w-25" placeholder="Sign Up"
									value="Sign Up">
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="tab-pane" id="recipient" role="tabpanel">
				<div class="jumbotron jumbotron-background">
					<h2 class="text-center">Sign Up as Recipient</h2>
					<form action="RecipientRegister" method="post">
						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="recipientId" class="form-label">Recipient ID:</label>
							<input type="text" id="donorId" name="donorId"
								class="form-control" placeholder="Enter Recipient ID"
								readonly="readonly">
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="patientName" class="form-label">Patient Name:</label>
							<input type="text" id="patientName" name="patientName"
								class="form-control" placeholder="Enter Patient Name">
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="GuardianName" class="form-label">Guardian
								Name:</label> <input type="text" id="GuardianName" name="GuardianName"
								class="form-control" placeholder="Enter Guardian Name">
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="relationwithpatient" class="form-label">Relation
								with Patient:</label> <input type="text" id="Relationwithpatient"
								name="Relationwithpatient" class="form-control"
								placeholder="Enter Relation with Patient">
						</div>


						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="gender" class="form-label">Gender:</label> <select
								id="gender" name="gender" class="form-control">
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
								placeholder="Enter Age">
						</div>

						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="bloodGroup" class="form-label">Required Blood
								:</label> <select id="bloodGroup" name="bloodGroup" class="form-control">
								<option value="-1" selected="selected">Blood Group
									Required</option>
								<option value="A-">A-</option>
								<option value="A+">A+</option>
								<option value="B-">B-</option>
								<option value="B+">B+</option>
								<option value="AB+">AB+</option>
								<option value="AB-">AB-</option>
								<option value="O+">O+</option>
								<option value="O-">O-</option>
							</select>
						</div>


						<div class="w-75 mb-3 mt-5 mx-auto">
							<label for="addressofpatient" class="form-label">Address
								of Patient :</label> <input type="text" id="addressofpatient"
								name="addressofpatient" class="form-control"
								placeholder="Enter Address of Patient">
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
							<label for="phoneNumber" class="form-label">Phone Number:</label>
							<input type="tel" id="phoneNumber" name="phoneNumber"
								class="form-control" placeholder="Enter Phone Number">
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