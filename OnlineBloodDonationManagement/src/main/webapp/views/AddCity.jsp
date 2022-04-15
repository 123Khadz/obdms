<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add City</title>
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
									<h2 class="font-weight-bold mb-0">Add City</h2>
								</div>
								<br>
								<form action="/add_city" method="post">
									<label class="text-success"><c:if test="${addCity}">City added successfully!</c:if></label>
									<label class="text-danger"><c:if test="${existCity}">City already exists!</c:if></label>
									<div class="form-group col-md-6">
										<label for="stateId">State</label> <select id="stateId"
											name="stateId" class="custom-select custom-select-sm">
											<option value="-1" selected="selected">Select State</option>
											<c:forEach var="state" items="${stateList }">
												<option value="${state.stateId }">${state.stateName }</option>
											</c:forEach>
										</select>
									</div>
									<div class="form-group col-md-6">
										<label for="cityName">City Name</label> <input type="text"
											class="form-control" id="cityName" name="cityName"
											placeholder="Name" />
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
								<!-- <h2 class="card-title font-weight-bold mb-0">Cities</h2> -->
							</div>
							<div class="table-responsive">
								<table class="table table-striped table-hover">
									<thead>
										<tr>
											<th>City ID</th>
											<th>City Name</th>
											<th>State Name</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="city" items="${cityList}">
											<tr>
												<td>${city.cityId }</td>
												<td>${city.cityName }</td>
												<td>${city.state.stateName }</td>
												<td><a href="edit_city?cityId=${city.cityId }"
													class="btn btn-primary">Edit</a> <a
													href="delete_city?cityId=${city.cityId }"
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