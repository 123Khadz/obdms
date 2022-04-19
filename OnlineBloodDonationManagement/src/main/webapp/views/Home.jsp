<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->

<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" href="bootstrap/css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="bootstrap/css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet"
	href="bootstrap/css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
	media="screen">

<title>Red Gold</title>
<link rel="shortcut icon" href="images/logo.png">
</head>

<body class="main-layout">
	<!-- loader  -->
	<div class="loader_bg">
		<div class="loader">
			<img src="images/loading.gif" alt="#" />
		</div>
	</div>
	<!-- end loader -->
	<!-- header -->
	<header>
		<!-- header inner -->
		<div class="header-top">
			<div class="header">
				<div class="container">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
							<div class="full">
								<div class="center-desk">
									<div class="logo">
										<a href="home"><img src="images/logo.png" height="40%"
											width="40%" alt="#" /></a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
							<div class="menu-area">
								<div class="limit-box">
									<nav class="main-menu">
										<ul class="menu-area-main">
											<li class="active"><a href="home">Home</a></li>
											<li><a href="#about">About</a></li>
											<li><a href="#login">Login</a></li>
											<li><a href="signup">SignUp</a></li>
											<li><a href="#donors">Our Donors</a></li>
											<li><a href="contact">Contact</a></li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end header inner -->
			<!-- end header -->
			<section class="slider_section">
				<div class="banner_main">
					<div class="container">
						<div class="row d_flex">
							<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 ">
								<div class="text-bg">
									<h1>Red Gold</h1>
									<span>Blood Donation Manager</span><br> <span><strong
										class="land_bold">Looking For Blood?</strong></span>
									<form action="/search" method="post">
										<div class="input-group w-50">
											<input type="search" class="form-control input-text"
												id="searchText" name="searchText" placeholder="Search Here">
											<div class="input-group-append w-25">
												<button type="submit" class="w-50">
													<i class="fa fa-search"></i>
												</button>
											</div>
										</div>
									</form>
								</div>
							</div>
							<div class="col-xl-7 col-lg-7 col-md-7 col-sm-12">
								<div class="text-img">
									<figure>
										<img src="images/blood4.png" height="70%" width="70%" />
									</figure>
								</div>
							</div>
						</div>
					</div>
				</div>

			</section>

		</div>
	</header>
	<!-- Best  -->
	<div id="about" class="Best">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>About Us</h2>
						<p>Red Gold is an Online Blood Donation Management System. It
							is a 24x7 system that provides services to the hospitals and
							other users. The system is easy to maintain all the information
							about the blood donor. This system aims to provide a direct link
							between the donor and the recipient. It helps to manage the
							record of donors.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="best_main">
						<div class="row d_flex">
							<div class="col-xl-7 col-lg-7 col-md-7 col-sm-12">
								<div class="best_text">
									<p>Blood bank is a place where blood bag that is collected
										from blood donation events is stored in one place. The term
										"blood bank" refers to a division of a hospital laboratory
										where the storage of blood product occurs and where proper
										testing is performed to reduce the risk of transfusion related
										events. After the blood donation events, the blood bags that
										they obtained will undergo tests. All of the blood received at
										the blood donation events must be managed thoroughly and
										systematically to avoid patient who need the blood infected by
										any viruses or diseases.</p>
									<a href="about">See More</a>
								</div>
							</div>
							<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12">
								<div class="best_img">
									<!-- <h4>Donate Blood</h4> -->
									<figure>
										<img src="images/beimg5.png" height="382px" width="382px">
									</figure>
								</div>
							</div>
						</div>
					</div>
					<div class="best_main">
						<div class="row d_flex">
							<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12">
								<div class="best_img croos_rt">
									<!-- <h4>Save Life!</h4> -->
									<figure>
										<img src="images/beimg.png" height="386px" width="386px">
									</figure>
								</div>
							</div>
							<div class="col-xl-7 col-lg-7 col-md-7 col-sm-12">
								<div class="best_text flot_left">
									<p>Blood is an important fluid that flows in our body. It
										is so important that if we lose excess of it from our body, we
										can die. But we are very lucky to have a blood transfusion
										process that can help save the lives of the people. The lives
										can only be saved if we have enough blood for the transfusion.
										Hence, blood donation is the only medium that can help us.
										People around the world donate blood which helps treat people
										with ill- health.</p>
									<a href="about">See More</a>
								</div>
							</div>
						</div>
					</div>
					<div class="best_main pa_bot">
						<div class="row d_flex">
							<div class="col-xl-7 col-lg-7 col-md-7 col-sm-12">
								<div class="best_text">
									<p>
										Blood donation also helps us to know our bodies. Before blood
										donation, our bodies undergo various health check-ups such as
										iodine levels, blood glucose levels, blood pressure, etc. This
										way we get a complete diagnosis of the body. In addition to
										this, there are various benefits of donating blood. It not
										only helps the receiver but also enhances the health of the
										donor. It revitalizes the body for better health. One blood
										donation can benefit many people. A single donation can help
										at least three people in need. It also makes the work of blood
										banks easier. <br> <strong>Be a Donor! Be a Life
											Saver!</strong>
									</p>
									<a href="signup">See More</a>
								</div>
							</div>
							<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12">
								<div class="best_img d_none">
									<h4>Every Drop is a Life!</h4>
									<figure>
										<img src="images/beimg2.png">
									</figure>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end Best -->
	<!-- contact -->
	<div id="login" class="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>Login to the System</h2>
						<p>Every drop of blood is like a breath for someone! A life
							may depend on a gesture from you, you can save many lives with a
							bottle of blood. Be a Donor! Login to Our System.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12">
					<div class="contact">
						<form action="/login" method="POST">
							<label class="text-danger"><c:if test="${invalidLogin}">Invalid id/password!</c:if></label>
							<label class="text-danger"><c:if test="${loginError}">You must login first!</c:if></label>
							<div class="row">
								<div class="col-sm-12">
									<input class="contactus" placeholder="Email" type="email"
										name="email" id="email" required>
								</div>
								<div class="col-sm-12">
									<input class="contactus" placeholder="Password" type="password"
										name="password" id="password" required>
								</div>
								<div class="col-sm-12">
									<a href="forgotPassword" class="forgot">Forgot Password?</a>
								</div>
								<div class="col-sm-12">
									<button type="submit" class="send">Login</button>
								</div>
								<div class="col-sm-12">
									<a href="signup" class="signUp">Don't have an account? <strong>SignUp
											Here</strong></a>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-xl-7 col-lg-7 col-md-7 col-sm-12">
					<div class="rable-box">
						<figure>
							<img src="images/donation.png" />

						</figure>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end contact -->
	<!-- clients -->
	<div id="donors" class="clients ">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>Our Donors</h2>
						<p>Blood donation is a very Noble cause and if you can save
							the lives of others you are no less a life saver than the
							doctors. We all might not become doctors but all of us can help
							the doctors by becoming blood donors. Thank you to all our
							donors, our heroes.</p>
					</div>
				</div>
			</div>
			<div class="row d_flex">
				<div class="col-md-10 offset-col-md-1">
					<div id="myCarousel" class="carousel slide clients_slider"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="container">
									<div class="carousel-caption">
										<div class="row d_flex">
											<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 pa_rile">
												<div class="img_box">
													<i><img src="images/icon_1.png" alt="#" /></i>
													<figure>
														<img src="images/clients.png" alt="#" />
													</figure>
												</div>
											</div>
											<div class="col-xl-7 col-lg-7 col-md-7 col-sm-12 pa_rile">
												<div class="joe">
													<h3>Joe elik</h3>
													<p>It is a long established fact that a reader will be
														distracted by the readable content of a page when looking
														at its layout. The point of using Lorem Ipsum is that it
														has a more-or-less normal distribution of letters, as</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="container">
									<div class="carousel-caption">
										<div class="row d_flex">
											<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 pa_rile">
												<div class="img_box">
													<i><img src="images/icon_1.png" alt="#" /></i>
													<figure>
														<img src="images/clients.png" alt="#" />
													</figure>
												</div>
											</div>
											<div class="col-xl-7 col-lg-7 col-md-7 col-sm-12 pa_rile">
												<div class="joe">
													<h3>Joe elik</h3>
													<p>It is a long established fact that a reader will be
														distracted by the readable content of a page when looking
														at its layout. The point of using Lorem Ipsum is that it
														has a more-or-less normal distribution of letters, as</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="container">
									<div class="carousel-caption">
										<div class="row d_flex">
											<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 pa_rile">
												<div class="img_box">
													<i><img src="images/icon_1.png" alt="#" /></i>
													<figure>
														<img src="images/clients.png" alt="#" />
													</figure>
												</div>
											</div>
											<div class="col-xl-7 col-lg-7 col-md-7 col-sm-12 pa_rile">
												<div class="joe">
													<h3>Joe elik</h3>
													<p>It is a long established fact that a reader will be
														distracted by the readable content of a page when looking
														at its layout. The point of using Lorem Ipsum is that it
														has a more-or-less normal distribution of letters, as</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#myCarousel" role="button"
							data-slide="prev"> <span class="carousel-control-prev-icon"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#myCarousel" role="button"
							data-slide="next"> <span class="carousel-control-next-icon"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end clients -->
	<!--  footer -->
	<footer>
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="call_now2">
							<h3>For Any Query,</h3>
							<span>Feel free to Contact Us!</span>
						</div>
					</div>
					<div class="col-md-6">
						<div class="call_now">
							<h3>Call Now</h3>
							<span>(9876543210)</span>
						</div>
					</div>
				</div>
			</div>
			<div class="copyright">
				<div class="container">
					<p>
						<strong>&copy; 2022 All Rights Reserved. <a href="home">Red
								Gold (Blood Donation Management System)</a></strong>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- end footer -->
	<!-- Javascript files-->
	<script src="bootstrap/js/jquery.min.js"></script>
	<script src="bootstrap/js/popper.min.js"></script>
	<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="bootstrap/js/jquery-3.0.0.min.js"></script>
	<script src="bootstrap/js/custom.js"></script>
</body>
</html>