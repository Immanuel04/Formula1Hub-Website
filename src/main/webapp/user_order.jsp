<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Collectible_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.CollectiblesOrderDAOImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F1 HUB: All Orders</title>
<%@include file="All_Component/allcss.jsp"%>
</head>
<body
	style="background: url('./game/bg ss2.jpg'); /* replace with your image path */ background-size: cover; background-position: center; background-attachment: fixed;">
	
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>
	
	<%@include file="All_Component/navbar.jsp"%>
	<div class="container p-1 mt-5 mb-5">
		<h3 class ="text-center text-light"><i>Your Orders</i></h3>
		<table class="table table-striped table-light mt-3">
			<thead class= "bg-danger text-light">
				<tr>
					<th scope="col">Order id</th>
					<th scope="col">Name</th>
					<th scope="col">Collectible</th>
					<th scope="col">Description</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>
				</tr>
			</thead>
			<tbody>
			<%
			User u = (User)session.getAttribute("userobj");
			CollectiblesOrderDAOImpl dao = new CollectiblesOrderDAOImpl(DBConnect.getConn());
			List<Collectible_Order> clist = dao.getCollectible(u.getEmail());
			for(Collectible_Order c:clist)
			{%>
			    <tr>
					<th scope="row"><%=c.getOrderId() %></th>
					<td><%=c.getUserName() %></td>
					<td><%=c.getHeading() %></td>
					<td><%=c.getDescription() %></td>
					<td><%=c.getPrice() %></td>
					<td><%=c.getPaymentType() %></td>
				</tr>
			
			<%
			}
			%>
				

			</tbody>
		</table>

	</div>
	<%@include file="All_Component/footer.jsp"%>
</body>
</html>