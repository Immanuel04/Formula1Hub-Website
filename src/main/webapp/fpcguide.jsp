<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="All_Component/allcss.jsp"%>
</head>
<body
	style="background: url('./game/bg3.jpg'); /* replace with your image path */ background-size: cover; background-position: center; background-attachment: fixed;">
	<%@include file="All_Component/navbar.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>

	<!--Left Video Right Info-->
	<div class="row">
		<div class="col-md-12">
			<div class="card" style="background: url('./game/bg3.jpg'); /* replace with your image path */ background-size: cover; background-position: center; background-attachment: fixed;">
				<h1 class="text-center text-dark">Sim Racing</h1>
				<div class="card-body">
					<div class="row">
						<div class="col-lg-6 col-md-12">
							<!-- Video on the left -->
							<video width="100%" height="auto" controls>
								<source src="tutorial\F1masterBahrainpc.mp4" type="video/mp4">
								Your browser does not support the video tag.
							</video>
						</div>
						<div class="col-lg-6 col-md-12 text-center">
							<!-- Information on the right -->
							<h3>Bahrain International Circuit</h3>
							<h4>Dive into the heart of the racing in F1 2023 as you
								explore tutorials, in-depth strategy guides, and thrilling
								gameplay sessions designed to elevate your skills to the next
								level.</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Left Video Right Info-->

	<!--Left Info Right Video-->
	<div class="row">
		<div class="col-md-12">
			<div class="card" style="background: url('./game/bg3.jpg'); /* replace with your image path */ background-size: cover; background-position: center; background-attachment: fixed;">
				<br>
				<div class="card-body">
					<div class="row">
						<div class="col-lg-6 col-md-12 text-center">
							<!-- Information on the right -->
							<h3>Albert Park Circuit</h3>
							<h4>Dive into the heart of the racing in F1 2023 as you
								explore tutorials, in-depth strategy guides, and thrilling
								gameplay sessions designed to elevate your skills to the next
								level.</h4>
						</div>
						<div class="col-lg-6 col-md-12">
							<!-- Video on the left -->
							<video width="100%" height="auto" controls>
								<source src="tutorial\F1masterAustraliapc.mp4" type="video/mp4">
								Your browser does not support the video tag.
							</video>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--End Left Info Right Video-->

    <!--Left Video Right Info-->
	<div class="row">
		<div class="col-md-12">
			<div class="card" style="background: url('./game/bg3.jpg'); /* replace with your image path */ background-size: cover; background-position: center; background-attachment: fixed;">
				<br>
				<div class="card-body">
					<div class="row">
						<div class="col-lg-6 col-md-12">
							<!-- Video on the left -->
							<video width="100%" height="auto" controls>
								<source src="tutorial\F1MobZandvoort2023.mp4" type="video/mp4">
								Your browser does not support the video tag.
							</video>
						</div>
						<div class="col-lg-6 col-md-12 text-center">
							<!-- Information on the right -->
							<h3>Circuit Zandvoort</h3>
							<h4>Dive into the heart of the racing in F1 2023 as you
								explore tutorials, in-depth strategy guides, and thrilling
								gameplay sessions designed to elevate your skills to the next
								level.</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Left Video Right Info-->


	<%@include file="All_Component/footer.jsp"%>
</body>
</html>