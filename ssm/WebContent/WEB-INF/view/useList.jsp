<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
    #context{
        width:500px;
        height:500px;
        margin:auto;
    }
</style>
</head>
<body>
<div id="context">
<h3>用户列表</h3>
<table border="1" style="border-collapse:collapse; width:500px;">
    <tr>
        <th>id</th>
        <th>用户名</th>
        <th>密码</th>
        <th>年龄</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${users }" var="user">
        <tr>
            <td>${user.id }</td>
            <td>${user.name }</td>
            <td>${user.password }</td>
            <td>${user.age }</td>
            <td>
                <a href="javascript:viod(0);" onclick="del(${user.id})">删除</a>&nbsp;&nbsp;
                <a href="javascript:viod(0);">修改</a>
            </td>
        </tr>
    </c:forEach>
</table>   
</div>  
<script type="text/javascript">
   function del(userId){
	   if(confirm("亲，你确认要删除吗")){
		   window.location.href = "${pageContext.request.contextPath }/user/delete.do?id="+userId;
	   }
   }

</script>

</body>
</html>