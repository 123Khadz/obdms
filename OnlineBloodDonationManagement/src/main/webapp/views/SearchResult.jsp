<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
</head>
<body>
	<%@include file="Header.jsp"%>
	<div class="content-wrapper mt-5 mb-5">
		<div class="row">
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-12 grid-margin">
						<div class="card">
							<div class="card-body">
								<div class="d-flex justify-content-between">
									<h2 class="card-title font-weight-bold mb-0">Blood Groups</h2>
								</div>
								<div class="table-responsive">
									<table class="table table-striped text-center table-hover">
										<thead>
											<tr>
												<th>Blood Groups</th>
												<th>Stock (in Units)</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="bloodGroup" items="${bloodGroupList }">
												<tr>
													<td>${bloodGroup.bloodGroup }</td>
													<td>${bloodGroup.stockOfBlood }</td>
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
									<h2 class="card-title font-weight-bold mb-0">Blood Banks</h2>
								</div>
								<div class="table-responsive">
									<table class="table table-striped table-hover">
										<thead>
											<tr>
												<th>HospitalName</th>
												<th>Contact Number</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="hospital" items="${hospitalListByName }">
												<tr>
													<td>${hospital.hospitalName }</td>
													<td>${hospital.phoneNumber }</td>
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
	<%@include file="Footer.jsp"%>
</body>
</html>