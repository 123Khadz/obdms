<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="assets/vendors/iconfonts/ionicons/dist/css/ionicons.css">
<link rel="stylesheet"
	href="assets/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet"
	href="assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="assets/vendors/css/vendor.bundle.addons.css">
<link rel="stylesheet" href="assets/css/shared/style.css">
<link rel="stylesheet" href="assets/css/demo_1/style.css">
<link rel="icon" href="images/fevicon.png" type="image/gif" />

<title>Admin Dashboard</title>
<link rel="shortcut icon" href="images/logo.png">
</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<nav style="background: #000 !important;"
			class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div style="background: rgb(100, 10, 10) !important; color:white;"
				class="navbar-brand-wrapper d-flex align-items-top">
				<a class="navbar-brand brand-logo" href="adminhome"><img class="w-25 h-75 mr-0 ml-0" 
					src="images/logo.png" alt="logo"/>Red Gold</a>
			</div>
			<div class="navbar-menu-wrapper d-flex align-items-center">
				<ul class="navbar-nav ml-auto">
					<li
						class="nav-item dropdown d-none d-xl-inline-block user-dropdown">
						<a class="nav-link dropdown-toggle" id="UserDropdown" href="#"
						data-toggle="dropdown" aria-expanded="false"> <img
							class="img-xs rounded-circle"
							src="assets/images/faces/admin_icon.png" alt="Profile image">
					</a>
						<div class="dropdown-menu dropdown-menu-right navbar-dropdown"
							aria-labelledby="UserDropdown">
							<div class="dropdown-header text-center">
								<img class="img-md rounded-circle"
									src="assets/images/faces/admin_icon.png" alt="Profile image">
								<p class="mb-1 mt-3 font-weight-semibold">Admin</p>
							</div>
							<a class="dropdown-item">My Profile <span
								class="badge badge-pill badge-danger">1</span><i
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
								<img class="img-xs rounded-circle"
									src="assets/images/faces/admin_icon.png" alt="profile image">
								<div class="dot-indicator bg-success"></div>
							</div>
							<div class="text-wrapper">
								<p class="profile-name">Admin</p>
								<!-- <p class="designation">Admin</p> -->
							</div>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="adminhome">
							<i class="menu-icon typcn typcn-document-text"></i> <span
							class="menu-title">Dashboard</span>
					</a></li>

					<li class="nav-item"><a class="nav-link" href="Donors.html">
							<i class="menu-icon typcn typcn-shopping-bag"></i> <span
							class="menu-title">Donors</span>
					</a></li>

					<li class="nav-item"><a class="nav-link"
						href="Recipients.html"> <i
							class="menu-icon typcn typcn-th-large-outline"></i> <span
							class="menu-title">Recipients</span>
					</a></li>

					<li class="nav-item"><a class="nav-link" href="add_hospital">
							<i class="menu-icon typcn typcn-th-large-outline"></i> <span
							class="menu-title">Hospitals</span>
					</a></li>

					<li class="nav-item"><a class="nav-link" href="add_blood_bank">
							<i class="menu-icon typcn typcn-th-large-outline"></i> <span
							class="menu-title">Blood Bank</span>
					</a></li>

					<li class="nav-item"><a class="nav-link"
						href="add_blood_group"> <i
							class="menu-icon typcn typcn-th-large-outline"></i> <span
							class="menu-title">Blood Group</span>
					</a></li>

					<li class="nav-item"><a class="nav-link" href="add_state">
							<i class="menu-icon typcn typcn-th-large-outline"></i> <span
							class="menu-title">State</span>
					</a></li>

					<li class="nav-item"><a class="nav-link" href="add_city">
							<i class="menu-icon typcn typcn-th-large-outline"></i> <span
							class="menu-title">City</span>
					</a></li>
				</ul>
			</nav>
			<div class="main-panel">
</body>
</html>