<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>
	function cancle() {
		self.close();
	}
</script>
</head>
<body>
	<div class="container">
		<div class="titleStyle">
			<h1>PCRoom</h1>
		</div>
		<form method="POST">
			<!-- 아이디 -->
			<div class="form-group">
				<label for="id">ID</label> <input type="text" class="form-control"
					id="id" name="id" value="${vo.id}" readonly="readonly">
			</div>
			<!-- 비밀번호 -->
			<div class="form-group">
				<label for="user_pw">Password</label> <input type="password"
					class="form-control" id="pw" name="pw" placeholder="PASSWORD"
					required>
				<div class="check_font" id="pw_check"></div>
			</div>
			<!-- 비밀번호 재확인 -->
			<div class="form-group">
				<label for="user_pw2">Confirm Password </label> <input type="password"
					class="form-control" id="pw2" name="pw2"
					placeholder="Confirm Password" required>
				<div class="check_font" id="pw2_check"></div>
			</div>
			<!-- 이름 -->
			<div class="form-group">
				<label for="user_name">UserName</label> <input type="text"
					class="form-control" id="name" name="name" value="${vo.name}"
					readonly="readonly">
			</div>
			<!-- 휴대전화 -->
			<div class="form-group">
				<label for="user_phone">Mobile Number (「-」없이 입력해 주시기 바랍니다.)</label> <input
					type="text" class="form-control" id="tel" name="tel"
					placeholder="Phone Number" required>
				<div class="check_font" id="phone_check"></div>
			</div>
			<!-- 주소 -->
			<div class="form-group">
				<label for="user_phone">Address (정확히 입력해 주시기 바랍니다.)</label> <input
					type="text" class="form-control" id="addr" name="addr"
					placeholder="ADDR" required>
				<div class="check_font" id="phone_check"></div>
			</div>
			<div class="reg_button">
				<a class="btn btn-danger px-3" onclick="javascript:cancle()"> <i
					class="fa fa-rotate-right pr-2" aria-hidden="true"></i>취소
				</a>&emsp;&emsp;
				<button class="btn btn-primary px-3" id="reg_submit">
					<i class="fa fa-heart pr-2" aria-hidden="true"></i>변경
				</button>
			</div>
		</form>
	</div>
</body>
</html>