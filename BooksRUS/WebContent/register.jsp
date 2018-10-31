<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head></head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>
<link rel="stylesheet" href="CSS/bootstrap.min.css" type="text/css" />
<script src="JS/jquery-1.11.3.min.js" type="text/javascript"></script>
<!-- 引入表单校验jquery插件 -->
<script src="JS/jquery.validate.min.js" type="text/javascript"></script>
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

.error{
	color:red
}
</style>



<script type="text/javascript">
	
	//自定义校验规则
	$.validator.addMethod(
		//规则的名称
		"checkUsername",
		//校验的函数
		function(value,element,params){
			
			//定义一个标志
			var flag = false;
			
			//value:输入的内容
			//element:被校验的元素对象
			//params：规则对应的参数值
			//目的：对输入的username进行ajax校验
			$.ajax({
				"async":false,
				"url":"${pageContext.request.contextPath}/checkUsername",
				"data":{"username":value},
				"type":"POST",
				"dataType":"json",
				"success":function(data){
					flag = data.isExist;
				}
			});
			
			
			//返回false代表该校验器不通过
			return !flag;
		}
		
	);


	$(function(){
		$("#myform").validate({
			rules:{
							
				
				"firstname":{
					"required":true,
					
				},
				"lastname":{
					"required":true,
					
				},
				
				"email":{
					"required":true,
					"email":true
				},
				"password":{
					"required":true,
					"rangelength":[6,12]
				},
				
			},
			messages:{			
				"firstname":{
					"required":"First name is empty!",
					
				},
				"lastname":{
					"required":"Last name is empty!",
					
				},
				"email":{
					"required":"email is empty!",
					"email":"Email format is incorrect!"
				},
				"password":{
					"required":"password is empty!",
					"rangelength":"Length of paswwowrd must be in the range of 6-12"
				},
			}
		});
	});

</script>

</head>
<body>

	<!-- 引入header.jsp -->
	<jsp:include page="/header.jsp"></jsp:include>

<div class="container" style="width: 100%; background: url('img/registerBackground.jpg');"> 

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8"
				style="background: #fff; padding: 40px 80px; margin: 30px; border: 7px solid #ccc;">
				<font>REGISTER:</font>USER REGISTER
				<form id="myform" class="form-horizontal" action="${pageContext.request.contextPath }/register" method="post" style="margin-top: 5px;">
										
					
					
					<div class="form-group">
						<label for="usercaption" class="col-sm-2 control-label">First Name</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="usercaption" name="firstname"
								placeholder="Please enter your first name">
						</div>
					</div>
					<div class="form-group">
						<label for="usercaption" class="col-sm-2 control-label">Last Name</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="usercaption2" name="lastname"
								placeholder="Please enter last your name">
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
						<div class="col-sm-6">
							<input type="email" class="form-control" id="inputEmail3" name="email"
								placeholder="Email">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="password" name="password"
								placeholder="Please enter password">
						</div>
					</div>
				
					

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" width="100" value="Create" name="submit"
								style="background: url('./img/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0); height: 35px; width: 100px; color: white;">
							<input type="submit" width="100" value="Cancel" name="submit"
								style="background: url('./img/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0); height: 35px; width: 100px; color: white;">
						</div>
						
					</div>
				</form>
			</div>

			<div class="col-md-2"></div>

		</div>
	</div>

	<!-- 引入footer.jsp -->
	<jsp:include page="/footer.jsp"></jsp:include>

</body>
</html>




