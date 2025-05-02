<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F1 HUB: About Us</title>
<%@include file="All_Component/allcss.jsp"%>
<style>
.img-border {
	box-shadow: 0 0 120px rgba(0, 0, 0, 0.6);
	/* Black shadow for a shaded effect */
}
</style>

</head>
<body>
	<%@include file="All_Component/navbar.jsp"%>

	<div class="container my-5">
		<div class="row">
			<!-- Logo on the left side -->
			<div class="col-md-6 text-center">
				<img src="./game/F1 Logo.jpg" alt="F1 Hub Logo"
					class="logo img-border" style="width: 470px; height: auto;">
			</div>
			<!-- Name of the website on the right side -->
			<div class="col-md-6 mt-4">
				<p style="font-size: 48px; color: red;">
					<b><i>Formula 1 Hub</i></b>
				</p>
			</div>
		</div>
		<!-- About us info below -->
		<div class="row mt-5">
			<div class="col">
				<h2>
					<b>About Us</b>
				</h2>
				<h5>Welcome to F1 Hub! We are your one-stop destination for all
					things related to Formula 1.</h5>
				<p></p>
				<h5>Our passion for F1 racing has driven us to create this
					platform where fans can not only shop for their favorite F1
					merchandise but also learn more about the game through our
					comprehensive gaming tutorials.</h5>
				<p></p>

				<br>
				<h2>
					<b>Who We Are</b>
				</h2>
				<h5>We are a team of F1 enthusiasts who believe in sharing our
					love for the sport. Our team is made up of professional gamers,
					experienced drivers, and die-hard fans of F1 racing.</h5>
				<br>
				<h2>
					<b>What We Do</b>
				</h2>
				<h5>
					<b>F1 Shopping:</b> We provide a wide range of F1 merchandise from
					all your favorite teams and drivers. Our products are of high
					quality and we ensure a seamless shopping experience for our
					customers.
					<p></p>
				</h5>

				<h5>
					<b>Gaming Tutorials:</b> We offer detailed gaming tutorials for F1
					racing games. Our tutorials are designed to help both beginners and
					advanced players to improve their gaming skills.
					<p></p>
				</h5>
				<h5>In addition, we provide gameplay videos to give our users a
					real-time experience of the games. We also ensure regular updates
					of games to keep our users up-to-date with the latest features and
					improvements.</h5>
				<br>
				<h2>
					<b>Our Mission</b>
				</h2>
				<h5>Our mission is to bring the thrilling world of F1 racing
					closer to fans around the world. We aim to provide a platform where
					F1 enthusiasts can connect, learn, and shop.</h5>
				<br>
				<h2>
					<b>Contact Us</b>
				</h2>
				<h5>For any queries or feedback, feel free to reach out to us
					at contact@f1shopgaming.com.</h5>

			</div>
		</div>
		<hr>
		<p>Thank you for visiting us and let's keep the F1 spirit alive!</p>
		<p style="font-size: 30px; color: red;">
			<b><i>Formula1 HUB</i></b> - Fueling Your F1 Passion
		</p>

	</div>

	<%@include file="All_Component/footer.jsp"%>
</body>
</html>