<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 登录 注册 购物车... -->
<div class="container-fluid">
	<div class="col-md-4">
		<img src="img/booksrus2.png" /> 
	</div>
	<!-- <div class="col-md-5">
		<img src="img/header2.jpg" />
	</div>   -->
	
	<!-- <div class="col-md-3" style="padding-top:20px"> -->
	<div class="col-md-3" style="padding-top:30px">
		<ol class="list-inline">
			<li><a href="login.jsp">Sign in</a></li>
			<li><a href="register.jsp">Register</a></li>
			<li><a href="cart.jsp">Cart</a></li>
			<li><a href="order_list.jsp">My Order</a></li>
		</ol>
	</div>
</div>

<!-- 导航条 -->
<div class="container-fluid">
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Home</a>
			</div>

			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li ><a href="product_list.htm">Art<span class="sr-only"></span></a></li>
					<li><a href="#">Business</a></li>
					<li><a href="#">History</a></li>
					<li><a href="#">Science</a></li>
				</ul>
				<form class="navbar-form navbar-right" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
		</div>
	</nav>
</div>