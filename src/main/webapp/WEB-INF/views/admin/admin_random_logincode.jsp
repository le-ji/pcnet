<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	function randid() {
		admin.submit();
	}
</script>
</head>
<body>
	<form method="post" name="admin" action="/unknownLogin_pro">
		<table>
			<tr>
				<td>非会員ログインコードを作成しますか？</td>
			</tr>
			<tr>
				<td>
					<input type ="text" name="loginnum" value="${randomId}" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td><input type="button" value="生成" onClick="javascript:randid()"> 
				<input type="button" value="キャンセル" onClick="self.close()"></td>
			</tr>
		</table>
	</form>
</body>
</html>