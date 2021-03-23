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
	var id =$("#id").val()
	var idJ = /^[A-Za-z0-9~!@#$%^&*()_+|<>?:{}]{4,20}$/;
	var pwJ = /^[A-Za-z0-9~!@#$%^&*()_+|<>?:{}]{4,20}$/;
	var numJ = /^[0-9]{8,11}$/;

	
	
	

$(function() {
	$("#id").blur(function() {
				var id = $('#id').val();
				$.ajax({
					url : '/user/idCheck?id='+ id,
					type : 'get',
					success : function(data) {
						console.log(data);
						if (data == 1) {
							// 1 : 아이디가 중복되는 문구
							$("#id_check").text("사용중인 ID입니다.");
							$("#id_check").css("color", "red");
							$("#reg_submit").attr("disabled", true);
						} else {
							if (idJ.test(id)) {
								// 0 : 아이디 길이 / 문자열 검사
								$("#id_check").text("사용가능한 ID입니다.");
								$('#id_check').css('color', 'green');
								$("#reg_submit").attr("disabled", false);
							} else if (id == "") {
								$('#id_check').text('ID를 입력해주시기 바랍니다.。');
								$('#id_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);
							} else {
								$('#id_check').text("ID는 소문자와 숫자로 입력해주시 바랍니다.");
								$('#id_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);
							}

						}
					},
					error : function() {
		
					}
				});
			});
	})
			
	$(function() {
	$("#pw").blur(function() {
		if (pwJ.test($("#pw").val())) {
			console.log('true');
			$("#pw_check").text("사용가능한 PW입니다.");
			$("#pw_check").css("color", "green");
		} else {
			console.log('false');
			$("#pw_check").text('숫자,영문,특수문자를 이용해 주시기 바랍니다.');
			$("#pw_check").css('color', 'red');
		}
	});
	$('#pw2').blur(function() {
		if ($('#pw').val() != $(this).val() || $(this).val() == "") {
			console.log('true');
			$('#pw2_check').text('PW를 확인해 주시기바랍니다.');
			$('#pw2_check').css('color', 'red');
		} else {
			console.log('false');
			$('#pw2_check').text('PW를 확인 되었습니다.');
			$('#pw2_check').css('color', 'green');
		}
	});
})

$(function() {
	$("#birth").blur(function() {
		if (numJ.test($("#birth").val())) {
			console.log('true');
			$("#birth_check").text("확인 되었습니다.");
			$("#birth_check").css("color", "green");
		} else {
			console.log('false');
			$("#birth_check").text('필수 정보입니다.');
			$("#birth_check").css('color', 'red');
		}
	});
})

$(function() {
	$("#tel").blur(function() {
		if (numJ.test($("#tel").val())) {
			console.log('true');
			$("#tel_check").text("확인 되었습니다.");
			$("#tel_check").css("color", "green");
		} else {
			console.log('false');
			$("#tel_check").text('필수정보 입니다.。');
			$("#tel_check").css('color', 'red');
		}
	});
})

$(function() {
	$("#addr").blur(function() {
		if (korJ.test($("#addr").val())) {
			console.log('true');
			$("#addr_check").text("확인 되었습니다.");
			$("#addr_check").css("color", "green");
		} else {
			console.log('false');
			$("#addr_check").text('필수 정보입니다.');
			$("#addr_check").css('color', 'red');
		}
	});
})

function userRegcheck() {
	if (userReg.id.value == "") {
		alert("필수 정보입니다.");
		userReg.id.focus();
		return false;
	}
	if (userReg.pw.value == "") {
		alert("필수 정보입니다.");
		userReg.pw.focus();
		return false;
	}
	if (userReg.pw2.value == "") {
		alert("필수 정보입니다.");
		userReg.pw2.focus();
		return false;
	}
	if (userReg.name.value == "") {
		alert("필수 정보입니다.");
		userReg.name.focus();
		return false;
	}
	if (userReg.birth.value == "") {
		alert("필수 정보입니다.");
		userReg.birth.focus();
		return false;
	}
	if (userReg.email.readOnly != true) {
		alert("메일 인증을 해주시기 바랍니다.");
		return false;
	}
	if (userReg.tel.value == "") {
		alert("필수 정보입니다.");
		userReg.tel.focus();
		return false;
	}
	if (userReg.addr.value == "") {
		alert("필수 정보입니다.");
		userReg.addr.focus();
		return false;
	}
	userReg.submit();
}

	function emailCheckFunction() {
		var email = $('#email').val();
		var url = "userEmailCheck?email=" + email;
		window.open(url, "", "width=300,height=150");
	}

	function cancle() {
		self.close();
	}
</script>
</head>
<body>
	<div class="container">
		<div class="titleStyle">
			<h1>영진PC방</h1>
		</div>
		<form method="POST" name="userReg">
			<!-- 아이디 -->
			<div class="form-group">
				<label for="id">아이디</label> <input type="text" class="form-control"
					id="id" name="id" placeholder="ID" required>
				<div class="check_font" id="id_check"></div>
			</div>
			<!-- 비밀번호 -->
			<div class="form-group">
				<label for="user_pw">비밀번호</label> <input type="password"
					class="form-control" id="pw" name="pw" placeholder="PASSWORD"
					required>
				<div class="check_font" id="pw_check"></div>
			</div>
			<!-- 비밀번호 재확인 -->
			<div class="form-group">
				<label for="user_pw2">비밀번호 확인</label> <input type="password"
					class="form-control" id="pw2" name="pw2"
					placeholder="Confirm Password" required>
				<div class="check_font" id="pw2_check"></div>
			</div>
			<!-- 이름 -->
			<div class="form-group">
				<label for="user_name">이름</label> <input type="text"
					class="form-control" id="name" name="name" placeholder="Name"
					required>
				<div class="check_font" id="name_check"></div>
			</div>
			<!-- 생년월일 -->
			<div class="form-group required">
				<label for="user_birth">생년월일</label> <input type="text"
					class="form-control" id="birth" name="birth"
					placeholder="ex) 19951220" required>
				<div class="check_font" id="birth_check"></div>
			</div>
			<!-- 본인확인 이메일 -->
			<div class="form-group">
				<label for="user_email">이메일</label> <input type="text"
					class="form-control" name="email" id="email" placeholder="E-mail"
					required>
				<button type="button" class="btn btn-outline-danger btn-sm px-3"
					onclick="emailCheckFunction();">
					<i class="fa fa-envelope"></i>&nbsp;인증
				</button>
				&nbsp;
				<div class="check_font" id="email_check"></div>
			</div>
			<!-- 휴대전화 -->
			<div class="form-group">
				<label for="user_phone">휴대전화 ('-' 없이 번호만 입력해주세요)</label> <input
					type="text" class="form-control" id="tel" name="tel"
					placeholder="Phone Number" required>
				<div class="check_font" id="phone_check"></div>
			</div>
			<!-- 주소 -->
			<div class="form-group">
				<label for="user_phone">주소 (상세하게 작성해주세요)</label> <input type="text"
					class="form-control" id="addr" name="addr" placeholder="ADDR"
					required>
				<div class="check_font" id="phone_check"></div>
			</div>
			<div class="reg_button">
				<a class="btn btn-danger px-3" onclick="javascript:cancle()"> <i
					class="fa fa-rotate-right pr-2" aria-hidden="true"></i>취소하기
				</a>&emsp;&emsp;
				<input type="button" class="btn btn-primary px-3" id="reg_submit" value="가입하기" onclick="javascript:userRegcheck()">
				
			</div>
		</form>
	</div>
</body>
</html>