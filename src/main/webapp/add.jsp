<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<link rel="stylesheet" href="css/css.css" />
</head>
<body>

	<form action="#">
		用户名：<input type="text" name="username" ><br>
		密码：<input type="text" name="password" ><br>
		<input type="button" value="添加" onclick="add()" >
	</form>

<script type="text/javascript">

	function add() {
		$.post("add.do",$("form").serialize(),function(data){
			if(data){
				alert("添加成功");
				location.href="list.do";
			}
		},"json");
	}

</script>

</body>
</html>