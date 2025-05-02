<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F1 HUB: Your Address</title>
<%@include file="All_Component/allcss.jsp"%>

</head>
<body
	style="background: url('./game/bg ss2.jpg'); /* replace with your image path */ background-size: cover; background-position: center; background-attachment: fixed;">
	<%@include file="All_Component/navbar.jsp"%>
	<div class="container">
		<div class="row p-3 mt-5 mb-5">
			<div class="col-md-6 offset-md-3">
				<div class="card mt-5 mb-5">
					<div class="card-body">
					<h3 class="text-center text-danger">Your Address</h3>
						<form action="">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputPassword4">Address</label> <input type="text"
										class="form-control" id="inputPassword4" value="">
								</div>
								
								<div class="form-group col-md-6">
									<label for="inputPassword4">Landmark</label> <input type="text"
										class="form-control" id="inputPassword4" value="">
								</div>
								
							</div>

							<div class="form-row">
								<div class="form-group col-md-4">
									<label for="inputPassword4">City</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
								<div class="form-group col-md-4">
									<label for="inputPassword4">State</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
								<div class="form-group col-md-4">
									<label for="inputPassword4">PinCode</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
							</div>
							
							<div class = "text-center">
							<button class ="btn btn-dark">Submit</button>
							</div>

							

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	


    <br><br><br>
	<%@include file="All_Component/footer.jsp"%>
</body>
</html>