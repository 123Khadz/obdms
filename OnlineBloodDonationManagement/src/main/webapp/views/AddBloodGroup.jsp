<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Blood Group</title>
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
									<h2 class="font-weight-bold mb-0">Add Blood Group</h2>
								</div>
								<br>
								<form action="/add_blood_group" method="post">
									<label class="text-success"><c:if test="${addBloodGroup}">Blood Group added successfully!</c:if></label>
									<label class="text-danger"><c:if test="${existBloodGroup}">Blood Group already exists!</c:if></label>
									<div class="form-group col-md-6">
										<label for="bloodGroup">Blood Group</label> <input type="text"
											class="form-control" id="bloodGroup"  name="bloodGroup"
											placeholder="Enter Blood Group" />
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
											<th>Blood Group ID</th>
											<th>Blood Group</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="group" items="${bloodGroupList }">
											<tr>
												<td>${group.bloodGroupId }</td>
												<td>${group.bloodGroup }</td>
												<td><a href="edit_bloodGroup?bloodGroupId=${group.bloodGroupId }"
													class="btn btn-primary">Edit</a> <a
													href="edit_bloodGroup?bloodGroupId=${group.bloodGroupId }"
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