
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
body {
	background-image: url(images/design_jingmeisheji_240554_11.jpg);
}
#apDiv1 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
	font-weight: bold;
	font-size: 36px;
	left: 394px;
	top: 36px;
}
#apDiv1 p {
	font-family: "MS Serif", "New York", serif;
	font-size: 36px;
	color: #00F;
}
#apDiv2 {
	position:absolute;
	width:367px;
	height:121px;
	z-index:2;
	left: 821px;
	top: 19px;
}
#apDiv3 {
	position:absolute;
	width:549px;
	height:119px;
	z-index:1;
	font-family: "Comic Sans MS", cursive;
	font-size: 36px;
	left: 325px;
	top: 16px;
	font-weight: bold;
}
#apDiv4 {
	position:absolute;
	width:341px;
	height:118px;
	z-index:2;
	left: 929px;
	top: 2px;
}
#apDiv5 {
	position:absolute;
	left:29px;
	top:115px;
	width:280px;
	height:65px;
	z-index:3;
	font-size: 12px;
}
#apDiv6 {
	position:absolute;
	left:58px;
	top:135px;
	width:268px;
	height:29px;
	z-index:4;
	font-size: 24px;
}
#apDiv7 {
	position:absolute;
	left:705px;
	top:42px;
	width:49px;
	height:88px;
	z-index:3;
}
#apDiv8 {
	position:absolute;
	left:714px;
	top:127px;
	width:36px;
	height:42px;
	z-index:4;
}
#apDiv9 {
	position:absolute;
	left:338px;
	top:97px;
	width:2195px;
	height:2993px;
	z-index:3;
}
#apDiv10 {
	position:absolute;
	left:650px;
	top:207px;
	width:637px;
	height:245px;
	z-index:3;
}
#apDiv11 {
	position:absolute;
	left:705px;
	top:246px;
	width:354px;
	height:101px;
	z-index:4;
	font-weight: bold;
	font-size: 24px;
	text-align: center;
}
#apDiv12 {
	position:absolute;
	left:651px;
	top:214px;
	width:473px;
	height:266px;
	z-index:4;
}
#apDiv13 {
	position:absolute;
	left:732px;
	top:259px;
	width:334px;
	height:108px;
	z-index:5;
	font-weight: bold;
	font-size: 24px;
	text-align: center;
}
#apDiv14 {
	position:absolute;
	left:774px;
	top:316px;
	width:317px;
	height:108px;
	z-index:6;
	font-weight: bold;
	font-size: 24px;
	text-align: left;
}
#apDiv15 {
	position:absolute;
	left:881px;
	top:400px;
	width:333px;
	height:55px;
	z-index:7;
}
#apDiv16 {
	position:absolute;
	left:982px;
	top:401px;
	width:187px;
	height:51px;
	z-index:8;
}
</style>
</head>

<body>
<form id="form1" name="login" method="post" action="LoginAction.action">
<div id="apDiv10"><img src="images/1.6.png" width="481" height="275" /></div>
<div id="apDiv12"><img src="images/f92e8e61098cf98a53119a7802954369.jpg" width="464" height="222" /></div>
<div id="apDiv13">用户名：
  <input type="text" name="userName" id="textfield" />
</div>
<div id="apDiv14">密  码：
  <input type="password" name="password" id="textfield2" />
</div>
<div id="apDiv15">
 
    <input type="submit" name="login" id="button" value="登录" style="color:blue;width:50px;height:50px;"/>
  
</div>
<div id="apDiv16">
  
    <input type="reset" name="reset"  value="重置" style="color:blue;width:50px;height:50px;" />
 
</div>
<form id="form2" name="form2" method="post" action="">
  <br />
</form>
<p>&nbsp;</p>
<div id="apDiv3">
  <marquee><p>欢迎进入埃卡内基员工管理系统</p></marquee>
</div><br /><p>&nbsp;
</p>
 <p>
   <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="400" height="325" vspace="30">
     <param name="flash_component" value="ImageViewer.swc" />
     <param name="movie" value="photo.swf" />
     <param name="quality" value="high" />
     <param name="FlashVars" value="flashlet={imageLinkTarget:'_blank',captionFont:'Verdana',titleFont:'Verdana',showControls:true,frameShow:false,slideDelay:5,captionSize:10,captionColor:#333333,titleSize:10,transitionsType:'Photo',titleColor:#333333,slideAutoPlay:true,imageURLs:['1.jpg','8b458257-28d0-42e4-b5a8-06d41763668b.jpg','20111012142736382.jpg','ec_2011728112858.jpg'],slideLoop:false,frameThickness:2,imageLinks:['http://macromedia.com/','http://macromedia.com/','http://macromedia.com/'],frameColor:#333333,bgColor:#FFFFFF,imageCaptions:[],title:'无锡艾卡内基学院'}" />
     <embed src="photo.swf" width="400" height="325" vspace="30" quality="high" flashvars="flashlet={imageLinkTarget:'_blank',captionFont:'Verdana',titleFont:'Verdana',showControls:true,frameShow:false,slideDelay:5,captionSize:10,captionColor:#333333,titleSize:10,transitionsType:'Photo',titleColor:#333333,slideAutoPlay:true,imageURLs:['1.jpg','8b458257-28d0-42e4-b5a8-06d41763668b.jpg','20111012142736382.jpg','ec_2011728112858.jpg'],slideLoop:false,frameThickness:2,imageLinks:['http://macromedia.com/','http://macromedia.com/','http://macromedia.com/'],frameColor:#333333,bgColor:#FFFFFF,imageCaptions:[],title:'无锡艾卡内基学院'}" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash"></embed>
   </object>
 </p>
 <p>&nbsp;</p>
 </form>
</body>
</html>
