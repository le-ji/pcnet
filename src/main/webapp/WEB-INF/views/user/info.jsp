<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en" class="h-100">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.79.0">
<title>회원 사용 정보</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/cover/">



<!-- Bootstrap core CSS -->
<link href="./resources/css/bootstrap-min.css" rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

#info {
	border: 4px solid #FFFFFF;
	border-radius: 8px;
	width: auto;
	height: auto;
}

td {
	border: 4px solid #FFFFFF;
}
</style>
<script type="text/javascript">
	
	function gamepage(page) {
		window.open(page, "", "width=1600,height=900", "_blank");
	}

	function userLogout() {
		url = "/user/userlogout";
		window.open(url, "", "width = 500, height = 300");
	}
	function userModify() {
		url = "/user/userModifyPwCheck";
		window.open(url, "", "width = 500, height = 300");
	}
	function userDelete() {
		url = "/user/userDelete";
		window.open(url, "", "width = 500, height = 300");
	}
	function userChat() {
		url = "/chat?id=${vo.id}";
		window.open(url, "", "width = 500, height = 300");
	}
</script>
<%@ include file="../include/timeUpdate.jsp"%>
<!-- Custom styles for this template -->
<link href="./resources/css/cover.css" rel="stylesheet">
</head>
<body class="d-flex h-100 text-center text-white bg-dark">
	<div class="cover-container d-flex w-100 h-80 p-4 mx-auto flex-column">
		<header>

			<%@ include file="../include/time.jsp"%>
			<a href="#"
				class="btn btn-lg btn-secondary fw-bold border-white bg-black"
				onclick="javascript:userLogout()">사용종료</a> <a href="#"
				class="btn btn-lg btn-secondary fw-bold border-white bg-black"
				onclick="javascript:userChat()">메세지</a> <a href="#"
				class="btn btn-lg btn-secondary fw-bold border-white bg-black"
				onclick="javascript:userModify()">회원정보수정</a> <a href="#"
				class="btn btn-lg btn-secondary fw-bold border-white bg-black"
				onclick="javascript:userDelete()">음식주문</a>
		</header>
		<main class="px-3">
			게임 추천
			<p class="lead">
				<a
					href="javascript:gamepage('https://na.leagueoflegends.com/ko-kr/')"
					class="btn btn-lg btn-secondary fw-bold border-white bg-white mt-3"><img
					src="./resources/img/lol.png" class="fixed" alt="2번째 컴퓨터" width=50
					height=50></a> <a
					href="javascript:gamepage('http://df.nexon.com/df/home')"
					class="btn btn-lg btn-secondary fw-bold border-white bg-white mt-3"><img
					src="./resources/img/던.jpg" class="fixed" alt="2번째 컴퓨터" width=50
					height=50></a> <a
					href="javascript:gamepage('https://maplestory.nexon.com/Home/Main')"
					class="btn btn-lg btn-secondary fw-bold border-white bg-white mt-3"><img
					src="./resources/img/메.jfif" class="fixed" alt="2번째 컴퓨터" width=50
					height=50></a>
			</p>
			<p class="lead">
				<a
					href="javascript:gamepage('http://mabinogi.nexon.com/page/main/index.asp')"
					class="btn btn-lg btn-secondary fw-bold border-white bg-white"><img
					src="./resources/img/마.ico" class="fixed" alt="2번째 컴퓨터" width=50
					height=50></a> <a
					href="javascript:gamepage('https://closers.nexon.com/Main/Index')"
					class="btn btn-lg btn-secondary fw-bold border-white bg-white"><img
					src="./resources/img/클.jpeg" class="fixed" alt="2번째 컴퓨터" width=50
					height=50></a> <a
					href="javascript:gamepage('https://lostark.game.onstove.com/Main')"
					class="btn btn-lg btn-secondary fw-bold border-white bg-white"><img
					src="./resources/img/로.png" class="fixed" alt="2번째 컴퓨터" width=50
					height=50></a>
			</p>
			<p class="lead">
				<a href="javascript:gamepage('https://starcraft.com/ko-kr/')"
					class="btn btn-lg btn-secondary fw-bold border-white bg-white"><img
					src="./resources/img/스.jfif" class="fixed" alt="2번째 컴퓨터" width=50
					height=50></a> <a
					href="javascript:gamepage('https://playoverwatch.com/ko-kr/')"
					class="btn btn-lg btn-secondary fw-bold border-white bg-white"><img
					src="./resources/img/오.png" class="fixed" alt="2번째 컴퓨터" width=50
					height=50></a> <a
					href="javascript:gamepage('http://fifaonline4.nexon.com/main/index')"
					class="btn btn-lg btn-secondary fw-bold border-white bg-white"><img
					src="./resources/img/피.jpg" class="fixed" alt="2번째 컴퓨터" width=50
					height=50></a>
			</p>
			<p class="lead">
				<a
					href="javascript:gamepage('https://pubg.game.daum.net/pubg/index.daum')"
					class="btn btn-lg btn-secondary fw-bold border-white bg-white"><img
					src="./resources/img/배.png" class="fixed" alt="2번째 컴퓨터" width=50
					height=50></a> <a
					href="javascript:gamepage('https://heroesofthestorm.com/ko-kr/')"
					class="btn btn-lg btn-secondary fw-bold border-white bg-white"><img
					src="./resources/img/히.png" class="fixed" alt="2번째 컴퓨터" width=50
					height=50></a> <a
					href="javascript:gamepage('https://gostop.hangame.com/index.nhn?gameId=msduelgo&utm_source=msduelgo&utm_medium=recomm&utm_campaign=main')"
					class="btn btn-lg btn-secondary fw-bold border-white bg-white"><img
					src="./resources/img/맞.png" class="fixed" alt="2번째 컴퓨터" width=50
					height=50></a>
			</p>
		</main>

		<footer class="mt-auto text-white-50"> 영진 PC방입니다. </footer>
	</div>

</body>
</html>

