<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<c:if test="${bool }">
	<script>
		alert('ログアウトされました。');
		self.close();
	</script>
</c:if>
<c:if test="${!bool}">
	<script>
		alert('しばらくしてからもう一度実行してください。');
		history.back();
	</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>