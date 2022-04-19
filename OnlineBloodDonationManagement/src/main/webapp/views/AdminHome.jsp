<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/SignUp.css">
<title>Admin Dashboard</title>
</head>
<body>
	<%@include file="AdminHeader.jsp"%>
	<div class="content-wrapper">
		<div class="row">
			<c:forEach var="stock" items="${stockList }">
				<div class="col-md-3 grid-margin stretch-card">
					<div class="card rounded cardBg text-white mb-3">
						<div class="card-body font-weight-">
							<h3 class="text-center font-weight-semibold">
								${stock.bloodGroup }<sup><span
									class="top-0 start-100 translate-middle badge rounded-pill bg-success">${stock.stockOfBlood }</span></sup>
							</h3>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-12 grid-margin">
						<div class="card">
							<div class="card-body">
								<div class="d-flex justify-content-between">
									<h2 class="card-title font-weight-bold mb-0">Latest Donors</h2>
								</div>
								<div class="table-responsive">
									<table class="table table-striped table-hover">
										<thead>
											<tr>
												<th>Name</th>
												<th>Blood Group</th>
												<th>Email</th>
												<th>Contact</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="donor" items="${donorList }">
												<tr>
													<td>${donor.firstName } ${donor.lastName }</td>
													<td>${donor.bloodGroup.bloodGroup }</td>
													<td>${donor.email }</td>
													<td>${donor.phoneNumber }</td>
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
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-12 grid-margin">
						<div class="card">
							<div class="card-body">
								<div class="d-flex justify-content-between">
									<h2 class="card-title font-weight-bold mb-0">Latest
										Recipients</h2>
								</div>
								<div class="table-responsive">
									<table class="table table-striped table-hover">
										<thead>
											<tr>
												<th>Name</th>
												<th>Blood Group</th>
												<th>Email</th>
												<th>Contact</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="recipient" items="${recipientList }">
												<tr>
													<td>${recipient.firstName } ${recipient.lastName }</td>
													<td>${recipient.bloodGroup.bloodGroup }</td>
													<td>${recipient.email }</td>
													<td>${recipient.phoneNumber }</td>
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