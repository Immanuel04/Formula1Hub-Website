<%@page import="com.entity.CollectionDetails"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CollectiblesDAOImpl"%>
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
	<div class="container">
		<div class="row p-2">
			<div class="col-md-5 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Collectibles</h4>
						
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						CollectiblesDAOImpl dao = new CollectiblesDAOImpl(DBConnect.getConn());
						CollectionDetails c = dao.getCollectiblesById(id);
						%>
						
						<form action="../editcollectibles" method="post">
						<input type = "hidden" name = "id" value = "<%=c.getItemid()%>">

							<div class="form-group">
								<label for="exampleInputEmail">Item Heading*</label> <input
									name="hname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value = "<%=c.getHeading()%>">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail">Description*</label> <input
									name="descr" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value = "<%=c.getDescription()%>">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail">Price*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputPassoword1" value = "<%=c.getPrice()%>">
							</div>

							<div class="form-group">
								<label for="inputState">Item Status</label> <select
									id="inputState" name="istatus" class="form-control"> 
									<%
									if ("Active".equals(c.getStatus())){
									%>
									<option value = "Active">Active</option>
									<option value = "Inactive">Inactive</option>
									<% 
									}else{
									%>
									<option value = "Active">Active</option>
									<option value = "Inactive">Inactive</option>
									<% 
									}
									%>
								</select>
							</div>
							<button type="submit" class="btn btn-danger">Update Changes</button>
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