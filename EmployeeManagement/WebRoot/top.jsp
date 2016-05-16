<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<style type="text/css">
<!--
#Layer1 {
	position: absolute;
	width: 279px;
	height: 39px;
	z-index: 1;
	left: 438px;
	top: 31px;
}

#Layer2 {
	position: absolute;
	width: 474px;
	height: 73px;
	z-index: 1;
	left: 303px;
	top: 15px;
}

.STYLE15 {
	font-size: 30px;
	font-family: Arial, Helvetica, sans-serif;
}

#Layer3 {
	position: absolute;
	width: 274px;
	height: 84px;
	z-index: 2;
	left: 783px;
	top: 18px;
}

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-size: 12px;
	color: #000000;
}

.STYLE18 {
	font-family: "华文中宋";
	font-size: 16px;
	color: #982B26;
	font-weight: bold;
}

.STYLE20 {
	font-size: 12px
}

.STYLE22 {
	font-size: 14px;
	color: #982B26;
	font-family: "宋体";
}

a:link {
	color: #000000;
	text-decoration: none;
}

a:visited {
	text-decoration: none;
	color: #000000;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}

.STYLE28 {
	font-size: 20px
}

.STYLE29 {
	font-size: 14;
	font-family: Arial, Helvetica, sans-serif;
}
-->
</style>
<script type="text/javascript">
	function signout() {
		var form = document.getElementById("form");
		form.action = "servlet/Signout";
		form.submit();
	}
	function date() {

		var dn;
		var d = new Array("Sunday", "Monday", "Tuesday", "Wednesday",
				"Thursday", "Friday", "Saturday");
		var date = new Date();
		var hours = date.getHours();
		var minute = date.getMinutes();
		var seconds = date.getSeconds();
		var year = date.getFullYear();

		var month = date.getMonth() + 1;
		var day = date.getDate();
		var time = d[date.getDay()];
		if (minute < 10)
			minute = "0" + minute;
		if (seconds < 10)
			seconds = "0" + seconds;
		if (hours > 12) {
			dn = "afternoon";
		} else {
			dn = "morning";
		}
		myclock = year + "/" + month + "/" + day + "/ " + " " + time + hours
				+ ":" + minute + ":" + seconds;
		document.getElementById("time").innerHTML = myclock;
		setTimeout("date()", 1000);
	}
</script>
</head>

<body onload="date();">
	<SCRIPT type=text/javascript>
		var clock = new Clock();
		clock.display(document.getElementById("clock"));
	</SCRIPT>
	<table width="100%" height="122" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="273" rowspan="2"><img
				src="images/icarnegie logo-3.jpg" width="300" height="91" /></img>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td width="555" rowspan="2">
				<div align="right">
					<img src="images/logoRight.jpg" width="600" height="91" />
				</div>
			</td>
		</tr>

		<tr>
			<td width="25%" height="87">
				<div id="Layer2">
					<h3 align="center">
						<span class="STYLE15" a="">员工基本信息管理系统</span><span class="STYLE28"><br>
						</span>
					</h3>
				</div>

				<div id="Layer3" style="width: 342px"></div>
			</td>
			<td width="20%" align="right" valign="top"></td>
		</tr>



		<tr>
			<td height="13" colspan="4" align="left" valign="middle"
				background="skin/images/frame/1.gif">
				<form id="form" action="" method="post">
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TBODY>
							<TR>
								<TD height="33">

									<DIV class="STYLE29">
										<IMG src="images/nav_pre.gif" align=absMiddle> <strong>
											Welcome*administrator</strong>
									</DIV>
								</TD>

								<td></td>
								<TD align=right width="70%"><SPAN
									style="PADDING-RIGHT: 50px"> <A href="login2.jsp"
										target=_top> <IMG src="images/nav_forward.gif"
											align=absMiddle border=0 /> sign out&nbsp;</a><A
										href="" target=main> </A> <IMG src="images/menu_seprator.gif" align=absMiddle>

										<SPAN id="time">2010/11/4 Sunday 6:38 PM</SPAN> </SPAN>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
				</form>
			</td>
		</tr>
		<tr>
		</tr>
	</table>
	

</body>
</html>
