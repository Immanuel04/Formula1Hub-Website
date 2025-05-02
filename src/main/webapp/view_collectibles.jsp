<%@page import="com.entity.CollectionDetails"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CollectiblesDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="All_Component/allcss.jsp"%>

</head>
<body style = "background-color:#262626;">
	<%@include file="All_Component/navbar.jsp"%>
	
	<%
	int id = Integer.parseInt(request.getParameter("itemid"));
	CollectiblesDAOImpl dao = new CollectiblesDAOImpl(DBConnect.getConn()); 
	CollectionDetails c = dao.getCollectiblesById(id);
	%>
	
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="collection/<%=c.getPhotoName() %>" style="height: 400px; width: 400px"><br>
			</div>

			<div class="col-md-6 text-center p-5 border bg-white">
				<h3 class = "mt-3"><b><%=c.getHeading() %></b></h3>
				<h3><b><%=c.getDescription() %></b></h3><br>
				<div class="row">
				<div class = "col-md-4 text-success text-center p-2">
					<i class="fa-solid fa-money-bill-wave fa-2x"></i>
					<p>Cash On Delivery</p>
				</div>
				<div class = "col-md-4 text-dark text-center p-2">
					<i class="fa-solid fa-rotate-left fa-2x"></i>
					<p>Return</p>
				</div>
				<div class = "col-md-4 text-danger text-center p-2">
					<i class="fa-solid fa-truck fa-2x"></i>
					<p>Free Shipping</p>
				</div>
				
				
				
				</div>
				<div class = "text-center p-3">
				<a href ="cart.jsp" class = "btn btn-danger"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
				<a href ="" class = "btn btn-success"><i class="fa-solid fa-indian-rupee-sign"></i> 2599</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>