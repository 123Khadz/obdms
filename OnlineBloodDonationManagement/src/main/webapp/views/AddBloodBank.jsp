<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Blood Bank</title>
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
									<h2 class="font-weight-bold mb-0">Add Blood Bank</h2>
								</div>
								<br>
								<form action="/add_blood_bank" method="post">
									<label class="text-success"><c:if
											test="${addBloodBank}">Blood Bank added successfully!</c:if></label>
									<label class="text-danger"><c:if
											test="${existBloodBank}">Blood Bank already exists!</c:if></label>
									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="hospitalId">Hospital</label> <select
												class="custom-select custom-select-sm" name="hospitalId"
												id="hospitalId">
												<option value="-1" selected="selected">Select
													Hospital</option>
												<c:forEach var="hospital" items="${hospitalList }">
													<option value="${hospital.hospitalId }">${hospital.hospitalName }</option>
												</c:forEach>
											</select>
										</div>
									</div>

									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="bloodGroupId">Blood Group</label> <select
												class="custom-select custom-select-sm" name="bloodGroupId"
												id="bloodGroupId">
												<option value="-1" selected="selected">Select Blood
													Group</option>
												<c:forEach var="group" items="${bloodGroupList }">
													<option value="${group.bloodGroupId }">${group.bloodGroup }</option>
												</c:forEach>
											</select>
										</div>
									</div>

									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="stock">Stock</label> <input type="number"
												class="form-control" id="stock" name="stock"
												placeholder="Enter Stock of the Blood" />
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="price">Price</label> <input type="number"
												class="form-control" id="price" name="price"
												placeholder="Enter Price of the Blood" />
										</div>
									</div>

									<div class="form-group col-md-6 text-right">
										<button type="submit" class="btn btn-primary">Submit</button>
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
											<th>Blood Bank ID</th>
											<th>Hospital Name</th>
											<th>Blood Group</th>
											<th>Quantity(in Units)</th>
											<th>Price</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="bloodBank" items="${bloodBankList}">
										<tr>
											<td>${bloodBank.bloodBankId }</td>
											<td>${bloodBank.hospital.hospitalName }</td>
											<td>${bloodBank.bloodGroup.bloodGroup }</td>
											<td>${bloodBank.stock }</td>
											<td>${bloodBank.price }</td>
											<td>
												<a href="edit_blood_bank?bloodBankId=${bloodBank.bloodBankId }"  class="btn btn-primary">Edit</a>
												<a href="delete_blood_bank?bloodBankId=${bloodBank.bloodBankId }" class="btn btn-danger">Delete</a>
											</td>
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