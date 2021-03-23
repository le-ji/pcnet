<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<c:if test="${bool }">
	<script>
		alert('블랙리스트를 추가하였습니다');
		history.back();
	</script>
</c:if>
<c:if test="${!bool }">
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