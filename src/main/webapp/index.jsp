<%@page import="com.entity.User"%>
<%@page import="com.entity.CollectionDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.CollectiblesDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F1 World</title>
<%@include file="All_Component/allcss.jsp"%>
<style type="text/css">

.crd-ho:hover {
	background-color: #fcd4d4;
}

.game-img {
	height: 80vh;
}
</style>

<script>
$('.carousel').carousel({
	  interval: 1500
	})

</script>

</head>
<body style="background: url('./game/bg ss2.jpg');  /* replace with your image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;">

	<%
	User u = (User) session.getAttribute("userobj");
	%>

	<%@include file="All_Component/navbar.jsp"%>
	
		<div id="carouselExampleSlidesOnly" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="./game/f1colbg.jpeg" alt="First slide" height="300px">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="./game/f1pc3copy.jpg" alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="./game/F1PC.jpg" alt="Third slide">
				</div>
			</div>
		</div>
	


	<!-- Start Latest Collection -->
	<div class="container">
		<h1 class="text-center text-white mt-3">Latest Collection</h1>
		<div class="row">
			<%
			CollectiblesDAOImpl dao2 = new CollectiblesDAOImpl(DBConnect.getConn());
			List<CollectionDetails> list2 = dao2.getLatestCollectibles();
			for (CollectionDetails c : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="collection/<%=c.getPhotoName()%>"
							style="max-width: 100%;" class="img-fluid">
						<p><b><%=c.getHeading()%></b></p>
						<p><%=c.getDescription()%></p>
						<p>
							Category: <%=c.getCategory()%></p>
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

							<a href="view_collectibles.jsp?itemid=<%=c.getItemid()%>"
								class="btn btn-dark btn-sm ml-1">View</a> <a href=""
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
		<div class="text-center mt-2">
			<a href="all_latest_collectibles.jsp" class="btn btn-light">View
				All</a>
		</div>

	</div>
	<!-- End Latest Collection -->

	<hr>
	<br>

	<!-- Start New Collection -->
	<div class="container">
		<h1 class="text-center text-white">Newest Collection</h1>
		<div class="row">

			<%
			CollectiblesDAOImpl dao = new CollectiblesDAOImpl(DBConnect.getConn());
			List<CollectionDetails> list = dao.getNewCollectibles();
			for (CollectionDetails c : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="collection/<%=c.getPhotoName()%>"
							style="max-width: 100%;" class="img-fluid">
						<p><b><%=c.getHeading()%></b></p>
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

							<a href="view_collectibles.jsp?itemid=<%=c.getItemid()%>"
								class="btn btn-dark btn-sm ml-1">View</a> <a href=""
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
		<div class="text-center mt-2">
			<a href="all_new_collectibles.jsp" class="btn btn-light">View All</a>
		</div>

	</div>
	<!-- End New Collection -->

	<hr>
	<br>

	<!-- Start Vintage Collection -->
	<div class="container">
		<h1 class="text-center text-white">Vintage Collection</h1>
		<div class="row">
			<%
			CollectiblesDAOImpl dao3 = new CollectiblesDAOImpl(DBConnect.getConn());
			List<CollectionDetails> list3 = dao3.getVintageCollectibles();
			for (CollectionDetails c : list3) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="collection/<%=c.getPhotoName()%>"
							style="max-width: 100%;" class="img-fluid">
						<p><b><%=c.getHeading()%></b></p>
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


							<a href="view_collectibles.jsp?itemid=<%=c.getItemid()%>"
								class="btn btn-dark btn-sm ml-1">View</a> <a href=""
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
		<div class="text-center mt-2">
			<a href="all_vintage_collectibles.jsp" class="btn btn-light">View
				All</a>
		</div>

	</div>
	<!-- End Vintage Collection -->
	<hr>
	<br>

	<!-- Start Private Collection -->
	<div class="container">
		<h1 class="text-center text-white">Private Collection</h1>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="collection/Red-Bull-RB19-1.4-Steering-Wheel-1.webp"
							style="max-width: 100%;" class="img-fluid">
						<p><b>Red Bull</b></p>
						<p>RB19 Car Used Steering Wheel</p>
						<p>Category: Private</p>
						<div class="d-flex justify-content-center">
						<a href="all_private_collectibles.jsp" class="btn btn-dark btn-block btn-sm ml-1">View</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="collection/ForceIndia2017FrontWingFlap.webp"
							style="max-width: 100%;" class="img-fluid">
						<p><b>Force India Team</b></p>
						<p>2017 Front Wing Flap and Signed photos</p>
						<p>Category: Private</p>
						<div class="d-flex justify-content-center">
						<a href="all_private_collectibles.jsp" class="btn btn-dark btn-block btn-sm ml-1">View</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="collection/lotusf1.webp"
							style="max-width: 100%;" class="img-fluid">
						<p><b>Lotus F1 Team</b></p>
						<p>2015 Race used Rear Wing Flap</p>
						<p>Category: Private</p>
						<div class="d-flex justify-content-center">
						<a href="all_private_collectibles.jsp" class="btn btn-dark btn-block btn-sm ml-1">View</a> 
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="collection/ValtteriBottasGloves.webp"
							style="max-width: 100%;" class="img-fluid">
						<p><b>Valtteri Bottas</b></p>
						<p>2020 Mercedes-AMG Petronas F1 Team Gloves </p>
						<p>Category: Private</p>
						<div class="d-flex justify-content-center">
						<a href="all_private_collectibles.jsp" class="btn btn-dark btn-block btn-sm ml-1">View</a> 
						</div>
					</div>
				</div>
			</div>


		</div>
		<div class="text-center mt-2">
			<a href="all_private_collectibles.jsp" class="btn btn-light">View All</a>
		</div>

	</div>
	<!-- End private Collection -->

	<!-- Game Updates -->
	<div class="container-fluid game-img mt-4"
		style="background-image: url('./game/F1MOBSnow.jpg'); background-size: cover;">
		<h1 class="text-center text-white">Game Updates</h1>
		<div class="row">
			<div class="col-md-6 offset-md-6">
				<!-- Offset by 6 columns to move content to the right -->
				<!-- Add content for the Game Updates section -->
				<h2 class="text-white text-center">F1 Mobile Racing Update 31</h2>
				<h3 class="text-white text-left">
					Snow Circuits, Multiple Bug Fixes, Improved Track <br>
					Performance.
				</h3>
				<h4 class="text-white text-left">
					<br>A selection of circuits have now been covered in
					picturesque snow, making for a treacherous yet refreshing racing
					environment. <br> <br>Based on community feedback, all
					future themed events will feature a loaded car with a fixed PI
					rating. <br> <br>General fixes on various cars
					specifications and tracks.
				</h4>

				<div class="d-flex justify-content-end mt-4">
					<!-- Move content to the right -->
					<b>To Know more about Update 31</b> &nbsp;<a
						href="https://www.ea.com/games/f1/f1-mobile-racing/news/update31"
						class="btn btn-danger btn-sm">READ MORE</a>
				</div>
			</div>
			<!-- Add more game update cards as needed -->
		</div>
	</div>
	<!--End Game Updates -->

	<!--SIM Race Learning -->
	<div class="row">
		<div class="col-md-12">
			<div class="card text-white"
				style="background: linear-gradient(to right, #000000, #ff4747);">
				<h1 class="text-center text-white">Sim Racing</h1>
				<div class="card-body">
					<div class="row">
						<div class="col-md-7">
							<!-- Image on the left -->
							<img alt="" src="game/F1SimRac.jpg" class="img-fluid">
						</div>
						<div class="col-md-5">
							<!-- Information on the right -->
							<h3>F1 2023</h3>
							<h4>Dive into the heart of the racing in F1 2023 as you
								explore tutorials, in-depth strategy guides, and thrilling
								gameplay sessions designed to elevate your skills to the next
								level.</h4>
							<div class="d-flex justify-content-center align-items-center">
								<!-- Move content to the right -->
								<a href="fpcguide.jsp" class="btn btn-light btn-sm">Track
									Guides</a>
							</div>
							<br>
							<h3>F1 Mobile Racing</h3>
							<h4>Embark on a journey of skills and racing mastery in F1
								Mobile Racing through a curated collection of dynamic and
								informative videos which has Track Guides and Car Setups.</h4>
							<div class="d-flex justify-content-center align-items-center">
								<!-- Move content to the right -->
								<a href="fmobguide.jsp" class="btn btn-light btn-sm">Track
									Guides</a>
							</div>
							<br>
							<h3>F1 Manager</h3>
							<h4>Elevate your managerial skills in F1 Manager 2022,
								meticulously crafted to guide you through the intricacies of
								team management, race strategy, and resource optimization.</h4>
							<!-- Add more details or buttons as needed -->
							<div class="d-flex justify-content-center align-items-center">
								<!-- Move content to the right -->
								<a href="fmanguide.jsp" class="btn btn-light btn-sm">Strategy
									Guides</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--End SIM Race Learning -->

	<%@include file="All_Component/footer.jsp"%>
</body>
</html>