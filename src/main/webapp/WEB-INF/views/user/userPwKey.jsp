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
<script type="text/javascript">
	function cancle() {
		self.close();
	}
</script>
</head>
<body>
	<div class="container">
		<div class="titleStyle">
			<h3>Find PW</h3>
		</div>
		<form method="post" action="/user/userPwKey">
			<div class="form-group">
				<label for="id">인증 번호</label> <input type="text" class="form-control"
					id="key" name="key" placeholder="key" required>
				<div class="check_font" id="key"></div>
			</div>
			<div class="reg_button">
				<button class="btn btn-primary px-3" id="reg_submit">
					<i class="fa fa-heart pr-2" aria-hidden="true"></i>Yes
				</button>
				<a class="btn btn-danger px-3" onclick="javascript:cancle()"> <i
					class="fa fa-rotate-right pr-2" aria-hidden="true"></i>No
				</a>&emsp;&emsp;
			</div>
		</form>
	</div>
</body>
</html>