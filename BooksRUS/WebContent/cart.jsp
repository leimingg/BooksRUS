<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Cart</title>
		<link rel="stylesheet" href="CSS/bootstrap.min.css" type="text/css" />
		<script src="JS/jquery-1.11.3.min.js" type="text/javascript"></script>
		<script src="JS/bootstrap.min.js" type="text/javascript"></script>
		<!-- 引入自定义css文件 style.css -->
		<link rel="stylesheet" href="CSS/style.css" type="text/css" />
		<style>
			body {
				margin-top: 20px;
				margin: 0 auto;
			}
			
			.carousel-inner .item img {
				width: 100%;
				height: 300px;
			}
			
			font {
				color: #3164af;
				font-size: 18px;
				font-weight: normal;
				padding: 0 10px;
			}
		</style>
	</head>

	<body>
		<!-- 引入header.jsp -->
		<jsp:include page="/header.jsp"></jsp:include>

		<div class="container">
			<div class="row">

				<div style="margin:0 auto; margin-top:10px;width:950px;">
					<strong style="font-size:16px;margin:5px 0;">Order Detail</strong>
					<table class="table table-bordered">
						<tbody>
							<tr class="warning">
								<th>Picture</th>
								<th>Product</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Subtotal</th>
								<th>Action</th>
							</tr>
							<tr class="active">
								<td width="60" width="40%">
									<input type="hidden" name="id" value="22">
									<img src="./img/IntroductiontoJava.jpg" width="70" height="60">
								</td>
								<td width="30%">
									<a target="_blank"> Introduction to Java</a>
								</td>
								<td width="20%">
									$166.25
								</td>
								<td width="10%">
									<input type="text" name="quantity" value="1" maxlength="4" size="10">
								</td>
								<td width="15%">
									<span class="subtotal">$166.25</span>
								</td>
								<td>
									<a href="javascript:;" class="delete">Delete</a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div style="margin-right:130px;">
				<div style="text-align:right;">
					
				
			Total: <strong style="color:#ff6600;">$166.25</strong>
				</div>
				<div style="text-align:right;margin-top:10px;margin-bottom:10px;">
					
					<a href="order_info.htm">
						<input type="submit" width="100" value="Place Order" name="submit" border="0" style="background: url('./img/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0);
						height:35px;width:100px;color:white;">
					</a>
				</div>
			</div>

		</div>

		<!-- 引入footer.jsp -->
		<jsp:include page="/footer.jsp"></jsp:include>

	</body>

</html>