<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/model/login/login.css">
</head>
<body>
	<!-- 定义容器 -->
	<div class="container">
		<div class="row" style="margin-top: 150px">
			<div class="col-md-4 col-sm-3"></div>

			<!-- 这一列为登陆表单 -->
			<div class="col-md-4 col-sm-6">
				<div class="panel panel-default">

					<!-- 登陆面板的标题 -->
					<div class="panel-title" style="text-align: center">
						<h2>登录</h2>
					</div>

					<!-- 登陆面板的主体 -->
					<div class="panel-body">

						<!-- 表单 -->
						<form id="login_form" class="form-horizontal" style="">

							<div class="form-group">
								<label class="control-label col-md-4 col-sm-4">用户ID：</label>
								<div class="col-md-7 col-sm-7">
									<input type="text" id="userID" class="form-control"
										placeholder="用户ID" name="userID" />
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4 col-sm-4"> <!-- <span class="glyphicon glyphicon-lock"></span> -->
									密码：
								</label>
								<div class="col-md-7 col-sm-7">
									<input type="password" id="password" class="form-control"
										placeholder="密码" name="password">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4 col-sm-4"> <!-- <span class="glyphicon glyphicon-lock"></span> -->
									验证码：
								</label>
								<div class="col-md-5 col-sm-4">
									<input type="text" id="checkCode" class="form-control"
										placeholder="验证码" name="checkCode">
								</div>
								<div>
									<img id="checkCodeImg" alt="checkCodeImg"
										src="account/checkCode/1">
								</div>
							</div>

							<div>
								<div class="col-md-4 col-sm-4"></div>
								<div class="col-md-4 col-sm-4">
									<button id="submit" type="submit" class="btn btn-primary">
										&nbsp;&nbsp;&nbsp;&nbsp;登录&nbsp;&nbsp;&nbsp;&nbsp;</button>
								</div>
								<div class="col-md-4 col-sm-4"></div>
							</div>
						</form>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-sm-3"></div>
		</div>
	</div>
	<%--星空特效canvas--%>
	<canvas id="canvas"></canvas>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery.md5.js"></script>
	<script>
		$(function() {
			validatorInit();
			refreshCheckCode();
		});

		// 刷新图形验证码
		function refreshCheckCode() {
			$('#checkCodeImg').click(function() {
				var timestamp = new Date().getTime();
				//被AccountHandler类拦截
				$(this).attr("src", "account/checkCode/" + timestamp)
			})
		}

		// 登陆信息加密模块
		function infoEncrypt(userID, password, checkCode) {
			var str1 = $.md5(password);
			var str2 = $.md5(str1 + userID);
			var str3 = $.md5(str2 + checkCode.toUpperCase());
			return str3;
		}
		//bootstrapValidator插件对表单进行封装，表单不用加action
		function validatorInit() {
			$('#login_form').bootstrapValidator({
				message : 'This value is not valid',
				feedbackIcons : {
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {
					userID : {
						validators : {
							notEmpty : {
								message : '用户名不能为空'
							},regexp: {
		                        regexp: '[0-9]+',
		                        message: '只允许输入数字'
		                    },
							callback : {}
						}
					},
					password : {
						validators : {
							notEmpty : {
								message : '密码不能为空'
							},
							callback : {}
						}
					},
					checkCode : {
						validators : {
							notEmpty : {
								message : '验证码不能为空'
							}
						}
					}
				}
			})
			.on('success.form.bv', function(e) {
				// 禁用默认表单提交
				e.preventDefault();

				// 获取 form 实例
				var $form = $(e.target);
				// 获取 bootstrapValidator 实例
				var bv = $form.data('bootstrapValidator');

				// 发送数据到后端 进行验证
				var userID = $('#userID').val();
				var password = $('#password').val();
				var checkCode = $('#checkCode').val();

				// 加密
				password = infoEncrypt(userID, password, checkCode)

				var data = {
					"id" : userID,
					"password" : password,
				}
				//JSON.stringify(data)序列化
				$.ajax({
					type: "POST",
					url: "account/login",
					dataType: "json",
					contentType: "application/json",
					data: JSON.stringify(data),
					success: function (response) {
						// 接收到后端响应

						// 分析返回的 JSON 数据
						if (response.result == 'error') {
							var errorMessage;
							var field;
							if (response.msg == "unknownAccount") {
								errorMessage = "用户名错误";
								field = "userID";
							}
							else if(response.msg == "incorrectCredentials"){
								errorMessage = "密码或验证码错误";
								field = "password";
								$('#password').val("");
							}else{
							    errorMessage = "服务器错误";
                                field = "password";
                                $('#password').val("");
							}
								
							// 更新 callback 错误信息，以及为错误对应的字段添加 错误信息
							bv.updateMessage(field,'callback',errorMessage);
							bv.updateStatus(field,'INVALID','callback');
							bv.updateStatus("checkCode",'INVALID','callback');
							//更新验证码
							$('#checkCodeImg').attr("src","account/checkCode/" + new Date().getTime());
							$('#checkCode').val("");
						}else{
							// 页面跳转
							window.location.href = "${pageContext.request.contextPath}/mainPage";
						}
					},
					error:function(data){
						// 处理错误
					}
				});
			});
		}
	</script>
<%--	<script type="text/javascript"--%>
<%--			src="${pageContext.request.contextPath}/js/canvas-nest.min.js"></script>--%>
	<script>
		//宇宙特效
		"use strict";
		var canvas = document.getElementById('canvas'),
				ctx = canvas.getContext('2d'),
				w = canvas.width = window.innerWidth,
				h = canvas.height = window.innerHeight,

				hue = 217,
				stars = [],
				count = 0,
				maxStars = 1300;//星星数量

		var canvas2 = document.createElement('canvas'),
				ctx2 = canvas2.getContext('2d');
		canvas2.width = 100;
		canvas2.height = 100;
		var half = canvas2.width / 2,
				gradient2 = ctx2.createRadialGradient(half, half, 0, half, half, half);
		gradient2.addColorStop(0.025, '#CCC');
		gradient2.addColorStop(0.1, 'hsl(' + hue + ', 61%, 33%)');
		gradient2.addColorStop(0.25, 'hsl(' + hue + ', 64%, 6%)');
		gradient2.addColorStop(1, 'transparent');

		ctx2.fillStyle = gradient2;
		ctx2.beginPath();
		ctx2.arc(half, half, half, 0, Math.PI * 2);
		ctx2.fill();

		// End cache

		function random(min, max) {
			if (arguments.length < 2) {
				max = min;
				min = 0;
			}

			if (min > max) {
				var hold = max;
				max = min;
				min = hold;
			}

			return Math.floor(Math.random() * (max - min + 1)) + min;
		}

		function maxOrbit(x, y) {
			var max = Math.max(x, y),
					diameter = Math.round(Math.sqrt(max * max + max * max));
			return diameter / 2;
			//星星移动范围，值越大范围越小，
		}

		var Star = function() {

			this.orbitRadius = random(maxOrbit(w, h));
			this.radius = random(60, this.orbitRadius) / 8;
			//星星大小
			this.orbitX = w / 2;
			this.orbitY = h / 2;
			this.timePassed = random(0, maxStars);
			this.speed = random(this.orbitRadius) / 50000;
			//星星移动速度
			this.alpha = random(2, 10) / 10;

			count++;
			stars[count] = this;
		}

		Star.prototype.draw = function() {
			var x = Math.sin(this.timePassed) * this.orbitRadius + this.orbitX,
					y = Math.cos(this.timePassed) * this.orbitRadius + this.orbitY,
					twinkle = random(10);

			if (twinkle === 1 && this.alpha > 0) {
				this.alpha -= 0.05;
			} else if (twinkle === 2 && this.alpha < 1) {
				this.alpha += 0.05;
			}

			ctx.globalAlpha = this.alpha;
			ctx.drawImage(canvas2, x - this.radius / 2, y - this.radius / 2, this.radius, this.radius);
			this.timePassed += this.speed;
		}

		for (var i = 0; i < maxStars; i++) {
			new Star();
		}

		function animation() {
			ctx.globalCompositeOperation = 'source-over';
			ctx.globalAlpha = 0.5; //尾巴
			ctx.fillStyle = 'hsla(' + hue + ', 64%, 6%, 2)';
			ctx.fillRect(0, 0, w, h)

			ctx.globalCompositeOperation = 'lighter';
			for (var i = 1, l = stars.length; i < l; i++) {
				stars[i].draw();
			};

			window.requestAnimationFrame(animation);
		}

		animation();
	</script>
</body>
</html>