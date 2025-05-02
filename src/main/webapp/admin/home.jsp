<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F1 HUB: Admin</title>
<%@include file="allcss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: blue;
}
</style>

</head>
<body style="background: url('../game/F1 Collection1.jpg');  /* replace with your image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;">
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>

	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_items.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-square-plus fa-3x text-primary"></i><br>
							<h4>Add Collectibles</h4>
							------------
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-3">
				<a href="all_collections.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-boxes-stacked fa-3x text-danger"></i><br>
							<h4>All Collectibles</h4>
							------------
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-box-open fa-3x text-warning"></i><br>
							<h4>Order</h4>
							------------
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-3">
				<a data-toggle="modal" data-target="#exampleModalCenter">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-right-from-bracket fa-3x text-secondary"></i><br>
							<h4>Logout</h4>
							------------
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>

	<!-- Logout Model -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Confirm
						Logout</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h4>Are you sure you want to Logout</h4>
						<button type="button" class="btn btn-dark" data-dismiss="modal">Cancel</button>
						<a href="../Logout" type="button" class="btn btn-danger">Logout</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Logout Model -->

	<div style="margin-top: 344px;">
		<%@include file="footer.jsp"%>
	</div>

</body>
</html>