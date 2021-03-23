<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function Slogout(){
		alert("해당회원을 로그아웃 시키겠습니다");
		admin.submit();
	}
</script>
</head>
<body>
	<form method="post" name="admin" action="../admin?cmd=AdminSessionLogoutPro">
		<table>
			<tr>
				<td>해당 회원을 로그아웃 시키겠습니까?</td>
			</tr>
			<tr>
				<td><input type="button" value="로그아웃" onClick="javascript:Slogout()"> 
				<input type="button" value="취소" onClick="self.close()"></td>
			</tr>
		</table>
	</form>


</body>
</html>