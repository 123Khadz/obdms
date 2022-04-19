<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recipients</title>
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
									<h1 class="card-title font-weight-bold mb-0">Recipients</h1>
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
											<c:forEach var="recipient" items="${recipientList }">
												<tr>
													<td>${recipient.recipientId }</td>
													<td>${recipient.firstName } ${recipient.lastName }</td>
													<td>${recipient.bloodGroup.bloodGroup }</td>
													<td>${recipient.email }</td>
													<td>${recipient.phoneNumber }</td>
													<td><a href="view_recipient?recipientId=${recipient.recipientId }"
														class="btn btn-success">View</a> <a
														href="edit_recipient?recipientId=${recipient.recipientId }"
														class="btn btn-primary">Edit</a> <a
														href="delete_recipient?recipientId=${recipient.recipientId }"
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