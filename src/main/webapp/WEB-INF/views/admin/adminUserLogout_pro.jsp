<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${row == 1}">
	<script>
		alert("로그아웃 하였습니다.");
		self.close();
	</script>
</c:if>
<c:if test="${row != 0}">
	<script>
		alert("로그아웃 실패");
		history.back();
	</script>
</c:if>
