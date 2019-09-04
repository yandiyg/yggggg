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

	<table>
		<tr>
			<td>编号</td>
			<td>用户名</td>
			<td>密码</td>
			<td>
				<a href="add.jsp">
					<input type="button" value="添加" >
				</a>
			</td>
		</tr>
		<c:forEach items="${list }" var="u">
			<tr>
				<td>${u.uid }</td>
				<td>${u.username }</td>
				<td>${u.password }</td>
				<td>
					<input type="button" value="删除" onclick="del(${u.uid})" >
				</td>
			</tr>
		</c:forEach>
	</table>

<script type="text/javascript">

	function del(uid) {
		$.post("delete.do",{"uid":uid},function(data){
			if(data){
				alert("删除成功");
				location.href="list.do";
			}
		},"json");
	}

</script>

</body>
</html>