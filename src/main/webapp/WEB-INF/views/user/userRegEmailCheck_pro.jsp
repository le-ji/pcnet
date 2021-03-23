<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${row == 1}">
<script>
	alert("인증되었습니다.");
	window.opener.userReg.email.readOnly=true;
	self.close();
</script>
</c:if>
<c:if test="${row != 1}">
<script>
	alert("잠시후 다시 시도해 주시기바랍니다.");
	history.back();
</script>
</c:if> 
