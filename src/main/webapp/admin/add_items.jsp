<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Add Collections</title>
<%@include file="allcss.jsp"%>
</head>
<body style="background: url('../game/bg3.jpg');  /* replace with your image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;">
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>

	<div class="container">
		<div class="row p-2">
			<div class="col-md-5 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Collectibles</h4>
						<c:if test="${not empty succMsg}">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg}">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<form action="../add_items" method="post"
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="exampleInputEmail">Item Heading*</label> <input
									name="hname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail">Description*</label> <input
									name="descr" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail">Price*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputPassoword1">
							</div>

							<div class="form-group">
								<label for="inputState">Collection Category</label> <select
									id="inputState" name="itype" class="form-control">
									<option selected>--select--</option>
									<option value="New">Recent Collection</option>
									<option value="Vintage">Vintage Collection</option>
								</select>
							</div>

							<div class="form-group">
								<label for="inputState">Item Status</label> <select
									id="inputState" name="istatus" class="form-control">
									<option selected>--select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>

							<div class="form-group">
								<label for="exampleFormControlFile1">Upload Photo</label> <input
									name="bing" type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>

							<button type="submit" class="btn btn-danger btn-block">Add</button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 10px;">
		<%@include file="footer.jsp"%>
	</div>

</body>
</html>