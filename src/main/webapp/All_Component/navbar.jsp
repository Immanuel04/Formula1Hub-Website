<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<div class="container-fluid" style="height: 10px; background-color: red"></div>

<div class="container-fluid p-3 bg-light">
	<div class="row">
		<div class="col-md-3 text-danger" style= "display: flex; align-items: center;">
			<img src="./game/navlogo1.jpg" alt="F1 Hub Logo"
				class="logo img-border" style="width: 50px; height: auto;">
			<h3>
				<b><i>&nbsp;F1 HUB</i></b>
			</h3>
		</div>
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0" action = "search.jsp" method = "post">
				<input class="form-control mr-sm-2" type="search" name = "ch"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-default my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>

		<c:if test="${not empty userobj}">
			<div class="col-md-3">
				<a href="cart.jsp" class="text-dark"><i
					class="fa-solid fa-cart-plus fa-2x"></i></a> <a href="login.jsp"
					class="btn btn-danger"><i class="fa-solid fa-user"></i>
					${userobj.name}</a> <a href="Logout" class="btn btn-danger"><i
					class="fa-solid fa-right-to-bracket"></i> Logout</a>
			</div>

		</c:if>

		<c:if test="${empty userobj}">
			<div class="col-md-3">
				<a href="login.jsp" class="btn btn-danger"><i
					class="fa-solid fa-right-to-bracket"></i> Login</a> <a
					href="register.jsp" class="btn btn-danger" id = "register-btn"><i
					class="fa-solid fa-user-plus"></i> Register</a>
			</div>
		</c:if>


	</div>

</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">
					<i class="fa-solid fa-house-chimney"></i> Home <span
					class="sr-only">(current)</span>
			</a></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fa-solid fa-gamepad"></i> Games
			</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="fpcinfo.jsp">F1 2023</a> <a
						class="dropdown-item" href="fmobinfo.jsp">F1 Mobile Racing</a> <a
						class="dropdown-item" href="fmaninfo.jsp">F1 Manager</a>
				</div></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fa-solid fa-store"></i>
					Collections
			</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="all_new_collectibles.jsp">Newest
						Collection</a> <a class="dropdown-item"
						href="all_vintage_collectibles.jsp">Vintage Collection</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Private Collection</a>
				</div></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><i class="fa-solid fa-tv"></i> Sim Race
					Learning</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="fpcguide.jsp">F1 2023</a> <a
						class="dropdown-item" href="fmobguide.jsp">F1 Mobile Racing</a> <a
						class="dropdown-item" href="fmanguide.jsp">F1 Manager</a>
				</div></li>

			<li class="nav-item active"><a class="nav-link disabled"
				href="aboutus.jsp"> <i class="fa-solid fa-people-group"></i>
					About Us
			</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<a href="setting.jsp" class="btn btn-light my-2 my-sm-0"
				type="submit"> <i class="fa-solid fa-gear"></i> Setting
			</a>

			<a href="helpline.jsp" class="btn btn-light my-2 my-sm-0 ml-2" type="submit">
				<i class="fa-solid fa-phone"></i> Contact Us
			</a>
		</form>
	</div>
</nav>