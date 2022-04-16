<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
</script>
<title>Add Hospitals</title>
</head>
<body>
	<%@include file="AdminHeader.jsp"%>
	<div class="content-wrapper">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-12 grid-margin">
						<div class="card">
							<div class="card-body">
								<div class="d-flex justify-content-between">
									<h2 class="font-weight-bold mb-0">Add Hospital</h2>
								</div>
								<br>
								<form action="/add_hospital" method="post">
									<label class="text-success"><c:if test="${addHospital}">Hospital added successfully!</c:if></label>
									<label class="text-danger"><c:if
											test="${existHospital}">Hospital already exists!</c:if></label>
									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="hospitalName">Name</label> <input type="text"
												class="form-control" id="hospitalName" name="hospitalName"
												placeholder="Enter Hospital Name" />
										</div>
										<div class="form-group col-md-6">
											<label for="category">Category</label> <select
												class="custom-select custom-select-sm" id="category"
												name="category">
												<option value="-1" selected="selected">Select
													Category</option>
												<option value="Government">Government</option>
												<option value="Private">Private</option>
											</select>
										</div>
									</div>

									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="stateId">State</label> <select id="stateId"
												name="stateId" class="custom-select custom-select-sm"
												onchange="getCity()">
												<option value="-1" selected="selected">Select State</option>
												<c:forEach var="state" items="${stateList }">
													<option value="${state.stateId }">${state.stateName }</option>
												</c:forEach>
											</select>
										</div>
										<div class="form-group col-md-6">
											<label for="cityId">City</label> <select id="cityId"
												name="cityId" class="custom-select custom-select-sm">
												<option value="-1" selected="selected">Select City</option>
											</select>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="location">Location</label>
											<textarea class="form-control" id="location" name="location"
												placeholder="Enter Location" rows="3" cols="100"></textarea>
										</div>
										<div class="form-group col-md-6">
											<label for="pincode">Pincode</label> <input type="text"
												class="form-control" id="pincode" name="pincode"
												placeholder="Enter Pincode" />
										</div>
									</div>

									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="email">Email</label> <input type="email"
												class="form-control" id="email" name="email" placeholder="Email" />
										</div>
										<div class="form-group col-md-6">
											<label for="phoneNumber">Phone</label> <input type="text"
												class="form-control" id="phoneNumber" name="phoneNumber"
												placeholder="Enter Phone Number" />
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col-md-12">
											<label for="status">Status</label> <select
												class="custom-select custom-select-sm" id="status"
												name="status">
												<option value="-1" selected="selected">Select
													Status</option>
												<option value="1">Active</option>
												<option value="0">Not Active</option>
											</select>
										</div>
									</div>

									<div class="form-row  text-right">
										<div class="form-group col-md-12">
											<button type="submit" class="btn btn-primary w-25">Submit</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-12">
			<div class="row">
				<div class="col-md-12 grid-margin">
					<div class="card">
						<div class="card-body">
							<div class="d-flex justify-content-between">
								<!-- <h2 class="card-title font-weight-bold mb-0">Hospitals</h2> -->
							</div>
							<div class="table-responsive">
								<table class="table table-striped text-center table-hover">
									<thead>
										<tr>
											<th>Hospital ID</th>
											<th>Hospital Name</th>
											<th>Category</th>
											<th>Email</th>
											<th>Phone</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="hospital" items="${hospitalList }">
											<tr>
												<td>${hospital.hospitalId }</td>
												<td>${hospital.hospitalName }</td>
												<td>${hospital.category }</td>
												<td>${hospital.email }</td>
												<td>${hospital.phoneNumber }</td>
												<td><a
													href="view_hospital?hospitalId=${hospital.hospitalId }"
													class="btn btn-success">View</a> <a
													href="edit_hospital?hospitalId=${hospital.hospitalId }"
													class="btn btn-primary">Edit</a> <a
													href="edit_hospital?hospitalId=${hospital.hospitalId }"
													class="btn btn-danger">Delete</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="AdminFooter.jsp"%>
</body>
</html>