<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
<script type="text/javascript">

	function register(){
		var $mobile = $("#mobile").val();
		/* 
		$.ajax({
			url:"MobileServlet",
			请求方式:"post",
			data:"mobile="+$mobile,
			success:function(result,testStatus){
				if(result=="true"){
					alert("注册成功")
				}else{
					alert("注册失败，此号码已存在")
				}
			},
			error:function(xhr,errorMessage,e){
				alert("服务器异常")
			}
		})
		
		$.post(
			"MobileServlet",
			"mobile="+$mobile,
			function (result) {
				if(result=="true"){
					alert("注册成功")
				}else{
					alert("注册失败，此号码已存在")
				}
			}
			
		)
		$("#tip").load(
				"MobileServlet",
				"mobile="+$mobile
			)
		
		$.getJSON(
				"MobileServlet",
				{"mobile":$mobile},
				function (result) {
					if(result.msg=="true"){
						alert("注册成功")
					}else{
						alert("注册失败，此号码已存在")
					}
				}
				
			)
		*/
		
	}
	
	function js(){
		var $tab = $("#tab");
		$tab.append($("<tr><td>姓名</td><td>年龄</td></tr>"))
		var str = ""
		$.getJSON(
				"JsonServlet",
				{},
				function (result) {
					var students = eval(result);
					$.each(students,function(i,e){
						//alert(this.name+"--"+e.age)	
						str = str+"<tr><td>"+this.name+"</td>"+"<td>"+this.age+"</td></tr>"	
					})
					$tab.append($(str))
				}
				
			)
	}
</script>
<title>Insert title here</title>
</head>
<body>
	手机：<input id="mobile" /><span id="tip"></span><br>
	<input type="button" value="注册" onclick="register()" />
	<input type="button" value="测试JSON" onclick="js()">
	<table border="1" id="tab"></table>
</body>
</html>