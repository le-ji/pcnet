<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${row == 1}">
<script>
	alert("로그인되었습니다.");
	window.open("/info","","width=500,height=700");
	window.close();
</script>
</c:if>
<c:if test="${row == 3}">
<script>
	alert("青少年の利用時間ではありません。");
	history.back();
</script>
</c:if> 
<c:if test="${row == 0}">
<script>
	alert("残り時間がありません。");
	history.back();
</script>
</c:if> 
<c:if test="${row == 2}">
<script>
	alert("ID나PW가 일치하지않습니다。");
	history.back();
</script>
</c:if> 
<c:if test="${row == -1}">
<script>
	alert("ブラックリストです。");
	history.back();
</script>
</c:if> 