<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	function randid() {
		if(admin.timeCharge.value =='0'){
			alert("時間を選択してください。");
			return false;
		}
		admin.submit();
	}
</script>
</head>
<body>
	<form method="post" name="admin">
		<table>
			<tr>
				<td>時間追加</td>
			</tr>
			<tr>
				<td>会員番号</td>
				<td>${vo.idx}</td>

			</tr>
			<tr>
				<td>残り時間</td>
				<td>${vo.time}分</td>
			</tr>
			<tr>
				<td>時間追加</td>
				<td><select name="timeCharge">
						<option value="0">時間</option>
						<option value="60">1時間</option>
						<option value="180">3時間</option>
						<option vlaue="300">5時間</option>
						<option value="720">12時間</option>
						<option value="1440">24時間</option>
				</select></td>

			</tr>
			<tr>

				<td><input type="button" value="時間追加"
					onClick="javascript:randid()"> <input type="button"
					value="キャンセル" onClick="self.close()"></td>
			</tr>
		</table>
	</form>
</body>
</html>