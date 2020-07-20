<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
function registerGet(){
	//alert("1111");
	var mobile = document.getElementById("mobile").value;
	//通过Ajax将数据发送至服务端
	xmlHttpRequest = new XMLHttpRequest();
	//alert("xxxx");
	//回调函数
	xmlHttpRequest.onreadystatechange = callBack;
	//发送格式
	xmlHttpRequest.open("get","MobileServlet?mobile="+mobile,true);
	//设置post方式的头信息
	//xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	xmlHttpRequest.send(null);//k=v
	
}
	function register(){
		//alert("1111");
		var mobile = document.getElementById("mobile").value;
		//通过Ajax将数据发送至服务端
		xmlHttpRequest = new XMLHttpRequest();
		//alert("xxxx");
		//回调函数
		xmlHttpRequest.onreadystatechange = callBack;
		//发送格式
		xmlHttpRequest.open("post","MobileServlet",true);
		//设置post方式的头信息
		xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		xmlHttpRequest.send("mobile="+mobile);//k=v
		
	}
	//定义回调函数
	function callBack(){
		if(xmlHttpRequest.readyState==4 && xmlHttpRequest.status==200){
			//接受服务端返回的数据
			var data = xmlHttpRequest.responseText;//服务端返回的是String类型的值 
			if(data == "false"){
				alert("此号码已存在")
			}else{
				alert("注册成功")
			}
		}
	}

</script>
<title>Insert title here</title>
</head>
<body>
	手机：<input id="mobile" /><br>
	<input type="button" value="注册" onclick="registerGet()" />
</body>
</html>