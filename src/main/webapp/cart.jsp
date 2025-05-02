<%@page import="com.entity.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F1:Hub Cart</title>
<%@include file="All_Component/allcss.jsp"%>
</head>
<body style="background: url('./game/bg ss2.jpg');  /* replace with your image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;">
	<%@include file="All_Component/navbar.jsp"%>

	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>

	<c:if test="${not empty succMsg}">
		<div class="alert alert-success" role="alert">${succMsg }</div>
		<c:remove var = "succMsg" scope = "session" />	
	</c:if>
	
	<c:if test="${not empty failedMsg}">
		<div class="alert alert-danger text-center" role="alert">${failedMsg }</div>
		<c:remove var = "failedMsg" scope = "session" />	
	</c:if>

	<div class="container">
		<div class="row p-2">
			<div class="col-md-6">
				<div class="card mt-4">
					<div class="card-body">
						<h3 class="text-center text-danger">
							<b>YOUR COLLECTIBLES</b>
						</h3>
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">Collectible</th>
									<th scope="col">Details</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>

								<%
								User u = (User) session.getAttribute("userobj");

								CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
								List<Cart> cart = dao.getCollectiblesByUser(u.getId());
								Double totalPrice = 0.00;
								for (Cart c : cart) {
									totalPrice = c.getTotalPrice();
								%>

								<tr>
									<td><%=c.getHeading()%></td>
									<td><%=c.getDescription()%></td>
									<td><%=c.getPrice()%></td>
									<td><a
										href="remove_collectible?itemid=<%=c.getItemid()%>&&uid=<%=c.getUid()%>&&cid=<%=c.getCid()%>"
										class="btn btn-sm btn-danger">Remove</a></td>
								</tr>
								
								<%
								}
								%>

								<tr>
									<td>Total Price</td>
									<td></td>
									<td></td>
									<td><%=totalPrice%></td>
								</tr>
                                 
							</tbody>
						</table>
					</div>
				</div>
			</div>


			<div class="col-md-6">
				<div class="card mt-4">
					<div class="card-body">
						<h3 class="text-center text-danger">
							<b>Order Details</b>
						</h3>
						<form action="order" method = "post">
						<input type = "hidden" value = "${userobj.id}" name = "id">
						
							<div class="form-row">
								<div class="form-group col-md-6">   
									<label for="inputEmail4">Name</label> <input type="text" name="username"
										class="form-control" id="inputEmail4" value="${userobj.name}" required="required"> <%--value="<%=u.getName()%>" readonly ="readonly"> for print the name details in read only format--%>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Email</label> <input type="email" name = "email"
										class="form-control" id="inputPassword4" value = "${userobj.email}" required="required">
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Phone Number</label> <input name = "phno"
										type="number" class="form-control" id="inputEmail4" value = "${userobj.phno }" required="required">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Address</label> <input type="text" name = "address"
										class="form-control" id="inputPassword4" required="required">
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Landmark</label> <input type="text" name = "landmark"
										class="form-control" id="inputEmail4" required="required">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">City</label> <input type="text" name = "city"
										class="form-control" id="inputPassword4" required="required">
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">State</label> <input type="text" name = "state"
										class="form-control" id="inputEmail4" required="required">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Pin Code</label> <input name = "pincode"
										type="number" class="form-control" id="inputPassword4" required="required">
								</div>
							</div>

							<div class="form-group">
								<label>Payment</label> <select class="form-control" name = "payment">
									<option value = "noselect">--Select--</option>
									<option value = "COD">Cash On Delivery</option>
								</select>
							</div>

							<div class="text-center">
								<button class="btn btn-warning">Order Now</button>
								<a href="index.jsp" class="btn btn-dark">Continue Shopping</a>
							</div>

						</form>
					</div>
				</div>
			</div>


		</div>
	</div>
</body>
</html>