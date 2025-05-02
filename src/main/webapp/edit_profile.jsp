<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F1 HUB: Update Your Profile</title>
<%@include file="All_Component/allcss.jsp"%>
</head>
<body
	style="background: url('./game/bg ss2.jpg'); /* replace with your image path */ background-size: cover; background-position: center; background-attachment: fixed;">
	<%@include file="All_Component/navbar.jsp"%>

	<div class="container">
		<div class="row mt-1">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5 mb-4">
					<div class="card-body">
						<h4 class="text-center text-danger">Edit Profile</h4>

						<c:if test="${not empty succMsg}">
							<h5 class="text-center text-success">${succMsg}</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg}">
							<h5 class="text-center text-danger">${failedMsg}</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<form action="update_profile" method="post">
							<input type="hidden" value="${userobj.id }" name="id">
							<div class="form-group">
								<label for="exampleInputEmail1">Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="fname"
									value="${userobj.name }">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email"
									value="${userobj.email }"> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="phno"
									value="${userobj.phno }">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									required="required" name="password"> <small id="emailHelp"
									class="form-text text-muted">Provide your correct password for updating your profile.</small>
							</div>
							<button type="submit" class="btn btn-dark btn-block">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@include file="All_Component/footer.jsp"%>
</body>
</html>