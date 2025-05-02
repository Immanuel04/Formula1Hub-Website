<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F1 HUB:Register</title>
<%@include file="All_Component/allcss.jsp"%>
</head>
<body
	style="background: url('./game/bg4.jpg') no-repeat center center fixed; background-size: cover; display: flex; flex-direction: column; min-height: 100vh;">
	<%@include file="All_Component/navbar.jsp"%>
	<!-- Start Registration Page -->
	<div class="conatiner p-3" style="flex: 1;">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card"
					style="background-color: rgba(255, 255, 255, 0.8); border-radius: 15px;">
					<div class="card-body">
						<h4 class="text-center">Registration</h4>

						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope = "session"/>
						</c:if>

						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope = "session"/>
						</c:if>

						<form action="register" method="post">

							<div class="form-group">
								<label for="exampleInputEmail1">Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Full Name"
									required="required" name="fname">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									required="required" name="email"> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Phone Number"
									required="required" name="phno">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									required="required" name="password">
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Agree Terms & Conditions</label>
							</div>
							<button type="submit" class="btn btn-block btn-dark mt-2">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Registration Page -->
	<%@include file="All_Component/footer.jsp"%>
</body>
</html>