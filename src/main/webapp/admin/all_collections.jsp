<%@page import="com.entity.CollectionDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.CollectiblesDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: All Collections</title>
<%@include file="allcss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	
	<h3 class="text-center">Hello Admin</h3>
	<c:if test="${not empty succMsg}">
		<h5 class="text-center text-success">${succMsg }</h5>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg}">
		<h5 class="text-center text-danger">${failedMsg }</h5>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<table class="table table-striped">
		<thead style="background-color: black;">
			<tr>
				<th scope="col" style="color: white">Id</th>
				<th scope="col" style="color: white">Image</th>
				<th scope="col" style="color: white">Item Heading</th>
				<th scope="col" style="color: white">Description</th>
				<th scope="col" style="color: white">Price</th>
				<th scope="col" style="color: white">Category</th>
				<th scope="col" style="color: white">Status</th>
				<th scope="col" style="color: white">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			CollectiblesDAOImpl dao = new CollectiblesDAOImpl(DBConnect.getConn());
			List<CollectionDetails> list = dao.getAllCollectibles();
			for (CollectionDetails c : list) {
			%>
			<tr>
				<td><%=c.getItemid()%></td>
				<td><img src="../collection/<%=c.getPhotoName()%>"
					style="width: 50px; height: 50px;"></td>
				<td><%=c.getHeading()%></td>
				<td><%=c.getDescription()%></td>
				<td><%=c.getPrice()%></td>
				<td><%=c.getCategory()%></td>
				<td><%=c.getStatus()%></td>
				<td><a href="edit_collectibles.jsp?id=<%=c.getItemid()%>"
					class="btn btn-sm btn-success"><i class="fa-solid fa-pen-to-square"></i> Edit</a> 
					<a href="../delete?id=<%=c.getItemid()%>" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can"></i> Delete</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<div style="margin-top: 332px;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>