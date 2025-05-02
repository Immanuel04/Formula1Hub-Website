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
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: red;
}
</style>
</head>
<body style="background: url('./game/Settingbg.jpg');  /* replace with your image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;">
<c:if test="${empty userobj}">
<c:redirect url = "login.jsp"></c:redirect>

</c:if>


	<%@include file="All_Component/navbar.jsp"%>
	<div class="container">
	
	<h2 class="text-center text-light mt-2">Hello, ${userobj.name}</h2>
		
		<div class="row p-5">
			<div class="col-md-6">
				<a href="">
					<div class="card" style="background-color: rgba(255, 255, 255, 0.8); border-radius: 15px;">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fa-solid fa-shirt fa-3x"></i>
							</div>
							<h4>Sell Collectibles</h4>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-6">
				<a href="edit_profile.jsp">
					<div class="card" style="background-color: rgba(255, 255, 255, 0.8); border-radius: 15px;">
						<div class="card-body text-center">
							<div class="text-warning">
								<i class="fa-solid fa-file-contract fa-3x"></i>
							</div>
							<h4>Login & Security(Edit Profile)</h4>
						</div>
					</div>
				</a>
			</div>
			
			
			<div class="col-md-6 mt-3">
				<a href="user_order.jsp">
					<div class="card" style="background-color: rgba(255, 255, 255, 0.8); border-radius: 15px;">
						<div class="card-body text-center">
							<div class="text-success">
								<i class="fa-solid fa-box-open fa-3x"></i>
							</div>
							<h4>My Order</h4>
							<p>Track Your Order</p>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-6 mt-3">
				<a href="helpline.jsp">
					<div class="card" style="background-color: rgba(255, 255, 255, 0.8); border-radius: 15px;">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-phone fa-3x"></i>
							</div>
							<h4>Contact us</h4>
							<p>24/7 Service</p>
						</div>
					</div>
				</a>
			</div>
			
			
		</div>
	</div>
	
	<br><br><br><br><br><br>
<%@include file="All_Component/footer.jsp"%>
</body>
</html>