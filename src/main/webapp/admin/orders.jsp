<%@page import="com.entity.Collectible_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CollectiblesOrderDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: All orders</title>
<%@include file="allcss.jsp"%>
</head>
<body>
    <c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	
	<%@include file="navbar.jsp"%>
	<h3 class="text-center">Hello Admin</h3>
	<table class="table table-striped">
		<thead style="background-color: black;">
			<tr>
				<th scope="col" style="color: white">Order ID</th>
				<th scope="col" style="color: white">Name</th>
				<th scope="col" style="color: white">Email</th>
				<th scope="col" style="color: white">Address</th>
				<th scope="col" style="color: white">Ph no</th>
				<th scope="col" style="color: white">Product</th>
				<th scope="col" style="color: white">Description</th>
				<th scope="col" style="color: white">Price</th>
				<th scope="col" style="color: white">Payment Type</th>
			</tr>
		</thead>
		<tbody>
			
			<%
		        CollectiblesOrderDAOImpl dao = new CollectiblesOrderDAOImpl(DBConnect.getConn());
			    List<Collectible_Order> clist = dao.getAllOrder();
			    for(Collectible_Order c:clist)
		    {%>
		    <tr>
				<th scope="row"><%=c.getOrderId() %></th>
				<td><%=c.getUserName() %></td>
				<td><%=c.getEmail() %></td>
				<td><%= c.getFulladd() %></td>
				<td><%=c.getPhno() %></td>
				<td><%=c.getHeading() %></td>
				<td><%=c.getPrice() %></td>
				<td><%=c.getDescription()%></td>
				<td><%=c.getPaymentType()%></td>

			</tr>
		    
		    <%
		    }    
		    %>

		</tbody>
	</table>
	<div style="margin-top: 353px;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>