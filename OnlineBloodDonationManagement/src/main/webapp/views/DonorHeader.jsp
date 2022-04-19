<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="assets/vendors/iconfonts/ionicons/dist/css/ionicons.css">
<link rel="stylesheet"
	href="assets/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="assets/vendors/css/vendor.bundle.addons.css">
<link rel="stylesheet" href="assets/css/shared/style.css">
<link rel="stylesheet" href="assets/css/demo_1/style.css">
<link rel="icon" href="images/fevicon.png" type="image/gif" />

<title>Donor Dashboard</title>
<link rel="shortcut icon" href="images/logo.png">
</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<nav style="background: #000 !important;"
			class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div style="background: rgb(100, 10, 10) !important;"
				class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
				<a class="navbar-brand brand-logo" href="donorhome"> </a> <a
					class="navbar-brand brand-logo-mini" href="donorhome"> <img
					src="images/logo.png" alt="logo" />
				</a>
			</div>
			<div class="navbar-menu-wrapper d-flex align-items-center">
				<ul class="navbar-nav ml-auto">
					<li
						class="nav-item dropdown d-none d-xl-inline-block user-dropdown">
						<a class="nav-link dropdown-toggle" id="UserDropdown" href="#"
						data-toggle="dropdown" aria-expanded="false"> <img
							class="img-xs rounded-circle" src="${donorUser.dpURL}"
							alt="Profile image">
					</a>
						<div class="dropdown-menu dropdown-menu-right navbar-dropdown"
							aria-labelledby="UserDropdown">
							<div class="dropdown-header text-center">
								<img class="img-md rounded-circle" src="${donorUser.dpURL}"
									alt="Profile image">
								<p class="mb-1 mt-3 font-weight-semibold">${donorUser.firstName}</p>
							</div>
							<a class="dropdown-item">Change Password<i
								class="dropdown-item-icon ti-dashboard"></i></a> <a
								class="dropdown-item" href="logout">Sign Out<i
								class="dropdown-item-icon ti-power-off"></i></a>
						</div>
					</li>
				</ul>
				<button
					class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
					type="button" data-toggle="offcanvas">
					<span class="mdi mdi-menu"></span>
				</button>
			</div>
		</nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<nav style="background: rgb(100, 10, 10) !important;"
				class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
					<li class="nav-item nav-profile"><a href="#" class="nav-link">
							<div class="profile-image">
								<img class="img-xs rounded-circle" src="${donorUser.dpURL}"
									alt="profile image">
								<div class="dot-indicator bg-success"></div>
							</div>
							<div class="text-wrapper">
								<p class="profile-name">${donorUser.firstName}</p>
								<!-- <p class="designation">Admin</p> -->
							</div>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="donorhome">
							<i class="menu-icon typcn typcn-document-text"></i> <span
							class="menu-title">Dashboard</span>
					</a></li>

					<li class="nav-item"><a class="nav-link" href="Donors.html">
							<i class="menu-icon typcn typcn-shopping-bag"></i> <span
							class="menu-title">Donation History</span>
					</a></li>

					<li class="nav-item"><a class="nav-link"
						href="Recipients.html"> <i
							class="menu-icon typcn typcn-th-large-outline"></i> <span
							class="menu-title">Edit Profile</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="Recipients.html"> <i
							class="menu-icon typcn typcn-th-large-outline"></i> <span
							class="menu-title">Book Appointment</span>
					</a></li>


				</ul>
			</nav>
			<div class="main-panel">
</body>


</html>