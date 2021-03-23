<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<c:if test="${row == 1 }">
	<script>
		alert('회원의 시간이 추가되었습니다.');
		self.close();
	</script>
</c:if>
<c:if test="${row !=1}">
	<script>
		alert('잠시 후 다시 시도해주세요.');
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