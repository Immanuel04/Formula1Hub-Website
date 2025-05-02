<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
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
<title>F1HUB: New Collectibles</title>
<%@include file="All_Component/allcss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #fcd4d4;
}

.game-img {
	height: 80vh;
}
</style>

</head>
<body style="background: url('./game/bg ss2.jpg');  /* replace with your image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;">
	<%
	User u = (User) session.getAttribute("userobj");
	%>

	<c:if test="${not empty addCart}">
		<div id="toast">${addCart}</div>

		<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>
		<c:remove var="addCart" scope="session" />
	</c:if>
	<%@include file="All_Component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-2">
			<%
			CollectiblesDAOImpl dao = new CollectiblesDAOImpl(DBConnect.getConn());
			List<CollectionDetails> list = dao.getAllVintageCollectibles();
			for (CollectionDetails c : list) {
			%>
			<div class="col-md-3 mt-3 mb-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="collection/<%=c.getPhotoName()%>"
							style="max-width: 90%;" class="img-fluid">
						<p><%=c.getHeading()%></p>
						<p><%=c.getDescription()%></p>
						<p>
							Category:
							<%=c.getCategory()%></p>
						<div class="d-flex justify-content-center">
							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i> ADD CART
							</a>
							<%
							} else {
							%>
							<a href="cart?itemid=<%=c.getItemid()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i> ADD CART
							</a>
							<%
							}
							%>

							<a href="view_collectibles.jsp?itemid=<%=c.getItemid()%>" class="btn btn-dark btn-sm ml-1">View</a> <a href=""
								class="btn btn-danger btn-sm ml-1"> <i
								class="fa-solid fa-indian-rupee-sign"></i> <%=c.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>
</body>
</html>