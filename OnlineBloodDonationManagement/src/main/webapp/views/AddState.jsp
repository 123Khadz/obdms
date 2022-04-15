<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add State</title>
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
									<h2 class="font-weight-bold mb-0">Add State</h2>
								</div>
								<br>
								<form action="/add_state" method="post">
									<label class="text-success"><c:if test="${addState}">State added successfully!</c:if></label>
									<label class="text-danger"><c:if test="${existState}">State already exists!</c:if></label>
									<div class="form-group col-md-6">
										<label for="stateName">State Name</label> <input type="text"
											class="form-control" id="stateName"  name="stateName"
											placeholder="Enter State Name" />
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
								<!-- <h2 class="card-title font-weight-bold mb-0">States</h2> -->
							</div>
							<div class="table-responsive">
								<table class="table table-striped table-hover">
									<thead>
										<tr>
											<th>State ID</th>
											<th>State Name</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="state" items="${stateList }">
											<tr>
												<td>${state.stateId }</td>
												<td>${state.stateName }</td>
												<td><a href="edit_state?stateId=${state.stateId }"
													class="btn btn-primary">Edit</a> <a
													href="edit_state?stateId=${state.stateId }"
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