<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F1 HUB: Login</title>
<%@include file="All_Component/allcss.jsp"%>
</head>
<body
	style="background: url('./game/bg4.jpg') no-repeat center center fixed; background-size: cover; display: flex; flex-direction: column; min-height: 100vh; ">
	<c:if test="${not empty userobj}">
	<c:redirect url = "edit_profile.jsp"></c:redirect>
	
	</c:if>
	
	<%@include file="All_Component/navbar.jsp"%>
	<div class="container p-3" style="flex: 1;">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card"
					style="background-color: rgba(255, 255, 255, 0.8); border-radius: 15px;">
					<div class="card-body">
						<h4 class="text-center">Login</h4>

						<c:if test="${not empty succMsg}">
							<h5 class="text-center text-success">${succMsg}</h5>
							<c:remove var="succMsg" scope="session"/>
						</c:if>
						
						<c:if test="${not empty failedMsg}">
							<h5 class="text-center text-danger">${failedMsg}</h5>
							<c:remove var="failedMsg" scope="session"/>
						</c:if>
						
						<form action="login" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required"
									placeholder="Enter your email" name="email"> <small
									id="emailHelp" class="form-text text-muted">We'll never
									share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									required="required" name="password">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-dark" id = "submit">Login</button>
								<br> <a href="register.jsp">Create Account</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="All_Component/footer.jsp"%>
</body>
</html>