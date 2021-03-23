<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	function randpw() {
		if (admin.tel.value == "") {
			alert("電話番号を入力してください")
			return;
		}
		if (admin.pw.value == "") {
			alert("PWを入力してください");
			return;
		}

	}
</script>
</head>
<body>
	<form method="post" name="admin" action="/admin_random_logincode_pro">
		<table>
			<tr>
				<td>臨時パスワードを作成するために電話番号を入力してください。</td>
			</tr>

			<tr>
				<td>PHONE : <input type=text name=tel placeholder="- なしで入力してください。"></td>
				
			</tr>
			<tr>
			<td>臨時PW : <input type="text" name="pw" value="${randomPw}" readonly="readonly"></td>
			
			</tr>
			<tr>
				<td><input type="button" value="生成" onClick="randpw()">
					<input type="button" value="キャンセル" onClick="self.close()"></td>
			</tr>
		</table>
	</form>
</body>
</html>