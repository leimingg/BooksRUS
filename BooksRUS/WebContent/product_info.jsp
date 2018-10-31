<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Product Information</title>
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
</style>
</head>

<body>
	<!-- 引入header.jsp -->
	<jsp:include page="/header.jsp"></jsp:include>

	<div class="container">
		<div class="row">
			<div
				style="border: 1px solid #e4e4e4; width: 930px; margin-bottom: 10px; margin: 0 auto; padding: 10px; margin-bottom: 10px;">
				<a href="./index.jsp">Home&nbsp;&nbsp;&gt;</a> <a href="./Science.htm">Science&nbsp;&nbsp;&gt;</a>
				
			</div>

			<div style="margin: 0 auto; width: 950px;">
				<div class="col-md-6">
					<img style="opacity: 1; width: 400px; height: 350px;" title=""
						class="medium"
						src="img/murach's-java-servlets-and-jsp(3rd-ed).jpg">
				</div>

				<div class="col-md-6">
					<div>
						<strong>Murach’s Java Servlets and JSP (3rd Edition)</strong>
					</div>
					<div
						style="border-bottom: 1px dotted #dddddd; width: 350px; margin: 10px 0 10px 0;">
						<div>Number:001</div>
					</div>

					<div style="margin: 10px 0 10px 0;">
						Price:<strong style="color: #ef0101;">$57.50</strong> 
					</div>

					

					<div
						style="padding: 10px; border: 1px solid #e7dbb1; width: 330px; margin: 15px 0 10px 0;; background-color: #fffee6;">
						<div style="margin: 5px 0 10px 0;">Print</div>

						<div
							style="border-bottom: 1px solid #faeac7; margin-top: 20px; padding-left: 10px;">
							Purchase Quantity: <input id="quantity" name="quantity" value="1"
								maxlength="4" size="10" type="text">
						</div>

						<div style="margin: 20px 0 10px 0;; text-align: center;">
							<a href="cart.htm"> <input
								style="background: url('./img/product.gif') no-repeat scroll 0 -600px rgba(0, 0, 0, 0); height: 36px; width: 127px;"
								value="Add to Cart" type="button">
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>
			<div style="width: 950px; margin: 0 auto;">
				<div
					style="background-color: #d3d3d3; width: 930px; padding: 10px 10px; margin: 10px 0 10px 0;">
					<strong>Product Description</strong>
				</div>

				<div>
					<img
						src="img/murach's-java-servlets-and-jsp(3rd-ed).jpg">
				</div>
				
				<div>
				<p>This new edition of Murach's Java Servlets and JSP makes it easier than ever for Java developers to master web programming. </p>
				<p>It shows how to install and use the Tomcat server and the NetBeans IDE. It shows how to use JSPs and servlets to build secure and well-structured web applications that implement the MVC pattern. </p>
				<p>It shows how to use sessions, cookies, JavaBeans, EL, JSTL, and custom tags. It shows how to use JDBC or JPA to work with a MySQL database. </p>
				<p>It shows how to work with JavaMail, SSL connections, authentication, encryption, filters, and listeners. It even includes an introduction to JSF to expand your perspective on Java web programming. </p>
				<p>These are the skills that you need to build professional Java web applications using servlets and JSP. A great read for any Java developer.</p>
				</div>

				<div
					style="background-color: #d3d3d3; width: 930px; padding: 10px 10px; margin: 10px 0 10px 0;">
					<strong>Product Details</strong>
				</div>
				<div style="margin-top: 10px; width: 900px;">
					<table class="table table-bordered">
						<tbody>
							<tr class="active">
								<th colspan="2">Basic Information</th>
							</tr>
							<tr>
								<th width="10%">Paperback</th>
								<td width="30%">758 pages</td>
							</tr>
							<tr>
								<th width="10%">ISBN-13</th>
								<td>978-1890774783</td>
							</tr>
							<tr>
								<th width="10%">Product Dimensions</th>
								<td>8 x 1.7 x 10 inches</td>
							</tr>
						</tbody>
					</table>
				</div>

				

				
			</div>

		</div>
	</div>


	<!-- 引入footer.jsp -->
	<jsp:include page="/footer.jsp"></jsp:include>

</body>

</html>