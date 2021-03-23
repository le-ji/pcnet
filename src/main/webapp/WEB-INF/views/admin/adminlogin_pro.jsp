<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${row == 1 }"> 
<script>
alert("管理者様、歓迎いたします。");
location.href="/adminList";
</script>
</c:if>
<c:if test="${row != 1}">
<script>
alert("IDやPWが一致しません。");
history.back();
</script>
</c:if>
