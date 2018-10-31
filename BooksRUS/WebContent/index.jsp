<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Books R US Homepage</title>
		<link rel="stylesheet" href="CSS/bootstrap.min.css" type="text/css" />
		<script src="JS/jquery-1.11.3.min.js" type="text/javascript"></script>
		<script src="JS/bootstrap.min.js" type="text/javascript"></script>
	</head>

	<body>
		<div class="container-fluid">

			<!-- 引入header.jsp -->
			<jsp:include page="/header.jsp"></jsp:include>

			<!-- 轮播图 -->
			<!-- <div class="container-fluid">
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					轮播图的中的小点
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>
					轮播图的轮播图片
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="img/1.jpg">
							<div class="carousel-caption">
								轮播图上的文字
							</div>
						</div>
						<div class="item">
							<img src="img/2.jpg">
							<div class="carousel-caption">
								轮播图上的文字
							</div>
						</div>
						<div class="item">
							<img src="img/3.jpg">
							<div class="carousel-caption">
								轮播图上的文字
							</div>
						</div>
					</div>

					上一张 下一张按钮
					<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div> -->
			
			<!-- Best Seller -->
			<div class="container-fluid">
				<div class="col-md-12">
					<h2>Best Seller&nbsp;&nbsp;<img src="img/recommended.png"/></h2>
				</div>
				<!-- <div class="col-md-2" style="border:1px solid #E7E7E7;border-right:0;padding:0;">
					<img src="products/hao/big01.jpg" width="205" height="404" style="display: inline-block;"/>
				</div>
				<div class="col-md-10">
					<div class="col-md-6" style="text-align:center;height:200px;padding:0px;">
						<a href="product_info.htm">
							<img src="products/hao/middle01.jpg" width="516px" height="200px" style="display: inline-block;">
						</a>
					</div> -->
				
					<div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/Cracking the coding interview.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>Cracking the Coding Interview</a></p>
						<p><font color="#E4393C" style="font-size:16px">$29.00</font></p>
					</div>
	
					<div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/head first servlets jsp.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>Head First Servlet&JSP</a></p>
						<p><font color="#E4393C" style="font-size:16px">$35.00</font></p>
					</div>

					<div class="col-md-2 yes-right-border" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/Introduction to Algorithm.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>Introduction to Algorithm</a></p>
						<p><font color="#E4393C" style="font-size:16px">$39.00</font></p>
					</div>
					
					<div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/murach's-java-servlets-and-jsp(3rd-ed).jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>Murach's Java</a></p>
						<p><font color="#E4393C" style="font-size:16px">$49.00</font></p>
					</div>
					
					<div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/FundamentalsofDatabaseSystems.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>Fundamentals of Database System</a></p>
						<p><font color="#E4393C" style="font-size:16px">$59.00</font></p>
					</div>
					
					<div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/html-and-css.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>HTML&CSS Design and Build Websites</a></p>
						<p><font color="#E4393C" style="font-size:16px">$19.00</font></p>
					</div>
	
				
				</div>
			</div>
			
			<!-- 广告条 -->
            <div class="container-fluid">
				<img src="img/header3.jpg" />
			</div>
			
			<!-- New Books -->
			<div class="container-fluid">
				<div class="col-md-12">
					<h2>New Books&nbsp;&nbsp;<img src="img/recommended.png" /></h2>
				</div>
				<!-- <div class="col-md-2" style="border:1px solid #E7E7E7;border-right:0;padding:0;">
					<img src="products/hao/big01.jpg" width="205" height="404" style="display: inline-block;"/>
				</div>
				<div class="col-md-10">
					<div class="col-md-6" style="text-align:center;height:200px;padding:0px;">
						<a href="product_info.htm">
							<img src="products/hao/middle01.jpg" width="516px" height="200px" style="display: inline-block;">
						</a>
					</div>
				
					<div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="products/hao/small03.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>冬瓜</a></p>
						<p><font color="#E4393C" style="font-size:16px">&yen;299.00</font></p>
					</div> -->
	
					<div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/heartland.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>Heartland: A Memoir of Working Hard and Being Broke in the Richest Country on Earth</a></p>
						<p><font color="#E4393C" style="font-size:16px">$17</font></p>
					</div>

					<div class="col-md-2 yes-right-border" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/obama.png" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>Obama: An Intimate Portrait</a></p>
						<p><font color="#E4393C" style="font-size:16px">$32</font></p>
					</div>
					
					<div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/21lessons.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>21 Lessons for the 21st Century</a></p>
						<p><font color="#E4393C" style="font-size:16px">$16.80</font></p>
					</div>
	
					<div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/IntroductiontoJava.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>Introduction to Java Programming and Data Structures</a></p>
						<p><font color="#E4393C" style="font-size:16px">$166.25</font></p>
					</div>

					<div class="col-md-2 yes-right-border" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/MBA.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>The Personal MBA: Master the Art of Business</a></p>
						<p><font color="#E4393C" style="font-size:16px">$19.00</font></p>
					</div>
					<div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/Makemoney.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>Make Money Online: 10 Strategies for Making Lots of Money Online </a></p>
						<p><font color="#E4393C" style="font-size:16px">$29.00</font></p>
					</div>
	
					<div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/buildingastory.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>Building a StoryBrand: Clarify Your Message So Customers Will Listen</a></p>
						<p><font color="#E4393C" style="font-size:16px">$20.00</font></p>
					</div>

					<div class="col-md-2 yes-right-border" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/oilandmarble.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>Oil and Marble: A Novel of Leonardo and Michelangelo</a></p>
						<p><font color="#E4393C" style="font-size:16px">$24.99</font></p>
					</div>
					
					<div class="col-md-2 yes-right-border" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/designbook.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>The Non-Designer's Design Book</a></p>
						<p><font color="#E4393C" style="font-size:16px">$16.58</font></p>
					</div>
					
					<div class="col-md-2 yes-right-border" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/homebody.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>Homebody: A Guide to Creating Spaces You Never Want to Leave </a></p>
						<p><font color="#E4393C" style="font-size:16px">$23.99</font></p>
					</div>
					
					<div class="col-md-2 yes-right-border" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/fifthrisk.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>The Fifth Risk</a></p>
						<p><font color="#E4393C" style="font-size:16px">$16.17</font></p>
					</div>
					
					<div class="col-md-2 yes-right-border" style="text-align:center;height:200px;padding:10px 0px;">
						<a href="product_info.htm">
							<img src="img/accountingmadesimple.jpg" width="130" height="130" style="display: inline-block;">
						</a>
						<p><a href="product_info.html" style='color:#666'>Accounting Made Simple: Accounting Explained in 100 Pages or Less</a></p>
						<p><font color="#E4393C" style="font-size:16px">$6.99</font></p>
					</div>
				</div>
			</div>			
			
			<!-- 引入footer.jsp -->
			<jsp:include page="/footer.jsp"></jsp:include>
			
		</div>
	</body>

</html>