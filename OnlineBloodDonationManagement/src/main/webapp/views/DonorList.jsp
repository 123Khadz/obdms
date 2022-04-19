<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donors</title>
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
									<h1 class="card-title font-weight-bold mb-0">Donors</h1>
								</div>
								<div class="table-responsive">
									<table class="table table-striped text-center table-hover">
										<thead>
											<tr>
												<th>ID</th>
												<th>Name</th>
												<th>Blood Group</th>
												<th>Email</th>
												<th>Phone</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="donor" items="${donorList }">
												<tr>
													<td>${donor.donorId }</td>
													<td>${donor.firstName } ${donor.lastName }</td>
													<td>${donor.bloodGroup.bloodGroup }</td>
													<td>${donor.email }</td>
													<td>${donor.phoneNumber }</td>
													<td><a href="view_donor?donorId=${donor.donorId }"
														class="btn btn-success">View</a> <a
														href="edit_donor?donorId=${donor.donorId }"
														class="btn btn-primary">Edit</a> <a
														href="delete_donor?donorId=${donor.donorId }"
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
	</div>
	<%@include file="AdminFooter.jsp"%>
</body>
</html>