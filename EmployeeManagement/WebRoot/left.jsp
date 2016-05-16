<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";		
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>选项</title>
<meta name="Generator" content="EditPlus">
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">

</head>
<script type="text/javascript" src="jquery-1.4.2.min.js"></script>
<script>
	$(document).ready(function() {
		$("#menu>dd>dl>dd").hide();
		$.each($("#menu>dd>dl>dt"), function() {
			$(this).click(function() {
				$("#menu>dd>dl>dd").not($(this).next()).slideUp(400);
				$(this).next().slideToggle(300);
			});
		});
		$.each($("#menu>dd>dl>dd>ul>li"), function() {
			$(this).mouseover(function() {
				$(this).addClass("hover");
			}).mouseout(function() {
				$(this).removeClass("hover");
			});
		});
	});
</script>
<style>
dl,dd,dt,ul,li {
	margin: 0;
	padding: 0;
	list-style: none;
	color: #333;
}

#menu {
	width: 180px;
	text-align: center;
	font-size: 12px;
	cursor: hand
}

#menu dd dl {
	padding-top: 8px;
	border-bottom: 1px solid #dedede;
}

#menu dd dl dt {
	background: #f2f2f2;
	height: 30px;
	line-height: 30px;
	font-weight: bold;
	background-image: url(skin/images/frame/1.gif);
	background-repeat: repeat-x;
	border-left: 1px solid #dedede;
	border-right: 1px solid #dedede
}

#menu ul {
	background: #f9f9f9;
}

#menu li {
	border-top: 1px solid #efefef;
	line-height: 30px;
	background-repeat: repeat-x;
	text-align: left;
	padding-left: 15px;
	vertical-align: middle;
	height: 30px;
	border-left: 1px solid #dedede;
	border-right: 1px solid #dedede
}

#menu a {
	text-decoration: none;
	color: #000000;
	margin-left: 3px
}

#menu a:hover {
	color: #3333CC;
	font-weight: bold;
}

.hover {
	background-color: #FFFFCC;
	color: #3333CC;
	font-weight: bold;
}

.leftSpan {
	margin-right:6px;
	float: left;
	vertical-align: middle;
}

.leftIma {
	border-width: 0px;
	padding-top: 3px
}
</style>
<body>


	<dl id="menu">
		<dd>
			<dl>
				<dt>
					员工管理操作<span></span>
				</dt>
				<dd>
					<ul>
						<li><a href="create-user.jsp" target="main" ><span
								class="leftSpan"><img
									src="images/addUserIco.png" class="leftIma" height="20"/>
							</span>添加员工信息</a>
						</li>
					
						<li><a href="searchemployee.jsp" target="main"><span class="leftSpan"><img
								src="images/searchUserIco.jpg" class="leftIma" height="20"/>
						</span>查询并修改用户信息</a>
						</li>
							<li><a href="show-users.jsp" target="main"><span class="leftSpan"><img
								src="images/change.png" class="leftIma" width="23" height="29"/>
						</span>打印用户信息</a>
						</li>
					</ul>
				</dd>
			</dl>
		</dd>


	</dl>

</body>
</html>