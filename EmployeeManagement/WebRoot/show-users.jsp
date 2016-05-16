<%@ page language="java" import="java.util.*"
	import="com.icar.employee.service.*" pageEncoding="utf-8"%>
<%@page import="com.icar.employee.dao.*"%>
<%@page import="com.icar.employee.dao.impl.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>显示用户信息</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<style>
body {
	font-size: 12px
}

table {
	width: 660px;
	border-collapse: collapse
}

table tr th,td {
	border: solid 1px #666;
	text-align: center
}

table tr td img {
	border: solid 1px #ccc;
	padding: 3px;
	width: 42px;
	height: 60px;
	cursor: center
}

table tr td span {
	float: left;
	padding-left: 12px
}

table tr th {
	background-color: ;
	height: 40px
}

.clsImg {
	position: absolute;
	border: solid 1px #ccc;
	padding: 3px;
	width: 85px;
	height: 120px;
	background-color: #eee;
	display: none
}

.btn {
	border: #666 1px solid;
	padding: 2px;
	width: 50px;
	filter: progid : DXImageTransform.Microsoft.Gradient ( GradientType = 0,
		StartColorStr = #ffffff, EndColorStr = #ECE9D8 );
}
</style>

		<script type="text/javascript">
var xmlrequest;
var userName;

function delTableRow() {
	var table1 = document.getElementById('table1');
	var isChecked = document.getElementsByName('isChecked');
	var len = isChecked.length;

	for ( var i = len - 1; i >= 0; i--) {
		if (isChecked[i].checked == true) {
			var id = i + "_userName";
			userName = document.getElementById(id);
			table1.deleteRow(i + 1);
		}
	}
}

function createXMLHttpRequest() {
	if (window.XMLHttpRequest) {
		xmlrequest = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		try {
			xmlrequest = new ActiveXObject("msxm12.XMLHTTP");
		} catch (e) {
			try {
				xmlrequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {
			}
		}
	}
}

function sendRequest() {
	createXMLHttpRequest();
	delTableRow();

	var url = "remove.action?userName=" + userName.firstChild.nodeValue; //前台要验证的数据地址，把要验证的数据传输过去
	alert("url: " + url);
	xmlrequest.open("GET", url, true);
	xmlrequest.onreadystatechange = processResponse;
	xmlrequest.send(null);
}

function processResponse() {
	if (xmlrequest.readyState == 4) {
		if (xmlrequest.status == 200) {
			var value = xmlrequest.responseText;
			document.getElementById("msg").innerHTML = value;
		}
	}
}
function selectAll() {
	for ( var i = 0; i < document.form1.memberId.length; i++) {
		var temp = document.form1.memberId[i];
		temp.checked = !temp.checked;
	}
	if (document.form1.selectButton.value == "全部选择") {
		document.form1.selectButton.value = "取消全选";
	} else {
		document.form1.selectButton.value = "全部选择";
	}
}
</script>
	</head>

	<body background="images/bg2.jpg">
		<%
			List<User> list = null;
			UserDao dao = new UserDaoImpl();
			list = dao.findAll();
		%>
		<div align="center">
<br><br><br><br><br><br><br><br><br><br><br>
			<table id="table1" background="images/ta.jpg" border=4>
				<tr>
					<th>
						选 项
					</th>
					<th style="width: 100px">
						姓名
					</th>
					<th style="width: 100px">
						性别
					</th>
					<th style="width: 100px">
						籍贯
					</th>
					<th style="width: 100px">
						员工编号
					</th>
					<th style="width: 200px">
						联系方式
					</th>
					<th style="width: 100px">
						身份证号
					</th>
					<th style="width: 100px">
						学历
					</th>
					<th style="width: 100px">
						毕业院校
					</th>
				</tr>
				<%
					for (int i = 0; i < list.size(); i++) {
				%>
				<tr id="0">
					<td>
						<%=i+1 %>
					</td>
					<td id="<%=i%>_name"><%=list.get(i).getName()%></td>
					<td><%=list.get(i).getSex()%></td>
					<td><%=list.get(i).getNativeplace()%></td>
					<td><%=list.get(i).getNum()%></td>
					<td><%=list.get(i).getTelephone()%></td>
					<td><%=list.get(i).getCardId()%></td>
					<td><%=list.get(i).getFormalschooling()%></td>
					<td><%=list.get(i).getUniversity()%></td>
				</tr>

				<%
					}
				%>

			</table>

			<table>
			</table>
			<span id="msg"></span>
		</div>
	</body>
</html>
