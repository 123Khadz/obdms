<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
</head>
<body>
	<%@include file="DonorHeader.jsp"%>
	<div class="content-wrapper">

		<div class="row">
			<div class="col-md-6">
				<div class="row">
					<div class="img_box">

						<figure>
							<img src="${donorUser.dpURL }" alt="#" />
						</figure>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 grid-margin">
						<div class="card">
							<div class="card-body">
								<div class="d-flex justify-content-between">
									<h2 class="card-title font-weight-bold mb-0">Welcome
										${donorUser.firstName }</h2>
								</div>
								<div class="table-responsive">
									<table class="table table-striped table-hover">
										<tr>
											<td>Name:</td>
											<td>${donorUser.firstName } ${donorUser.lastName }</td>
										</tr>
										<tr>
											<td>Name:</td>
											<td>${donorUser.bloodGroup.bloodGroup }</td>
										</tr>
										<tr>
											<td>Gender:</td>
											<td>${donorUser.gender }</td>
										</tr>
										<tr>
											<td>Email:</td>
											<td>${donorUser.email }</td>
										</tr>
										<tr>
											<td>Contact:</td>
											<td>${donorUser.phoneNumber }</td>
										</tr>
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