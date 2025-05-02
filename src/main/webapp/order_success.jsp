<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F1 HUB: Order Success</title>
<%@include file="All_Component/allcss.jsp"%>
</head>
<body
	style="background: url('./game/F1 car 3.jpg'); /* replace with your image path */ background-size: cover; background-position: center; background-attachment: fixed;">
	<%@include file="All_Component/navbar.jsp"%>
	<div class="container text-center text-white mt-5 mb-5">
		<i class="fa-solid fa-circle-check fa-5x text-success mb-2"></i>
		<h1>Thank You</h1>
		<h2>Order Placed Successfully</h2>
		<h5>Your Collectibles will arrive in your address within 7 days.</h5>
		<a href="index.jsp" class="btn btn-light mt-3">Home</a> <a
			href="user_order.jsp" class="btn btn-success mt-3">View all your
			Orders</a><br>
		<!-- New button for downloading the order bill -->
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="All_Component/footer.jsp"%>
</body>
</html>