<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${row == 1}">
<script>
	alert("로그아웃 되었습니다.");
	window.opener.location.replace("/");
	self.close();
</script>
</c:if>
<c:if test="${row != 1}">
<script>
	alert("しばらくしてからもう一度実行してください。");
	history.back();
</script>
</c:if>