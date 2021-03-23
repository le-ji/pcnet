<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="h-100">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.79.0">
<title>PCRoom</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/cover/">
<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap-min.css" rel="stylesheet">

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

th {
	border: 4px solid #FFFFFF;
	border-radius: 8px;
}
</style>
<script type="text/javascript">
	function userReg() {
		var url = "user/userReg";
		window.open(url, "", "we")
	}
	function userSearch() {
		var url = "user/userSearch";
		window.open(url, "", "we")
	}
</script>

<!-- Custom styles for this template -->
<link href="./resources/cover.css" rel="stylesheet">
</head>
<body class="d-flex h-100 text-center text-white bg-dark">

	<div
		class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column float-none margin-0 auto">
		<header class="mb-auto">
			<div>
				
				<div style="position: relative">
					<img src="./resources/img/Moniter.jpeg" class="fixed" alt="1번째 컴퓨터"
						width=1500 height=600>
				</div>
			</div>
		</header>
		<main class="px-3 ml-auto mr-auto">
			<h1>어서오세요! 영진PC방입니다.</h1>
			<p class="lead"></p>
			<form class="form-signin" method="post" action="user/userLogin">
				<table>
					<tr>
						<td><a
							class="btn btn-lg btn-secondary fw-bold border-white bg-black me-3">
								I D </a></td>
						<td><input type="text" id="id" name="id" class="form-control"
							placeholder="ID" required autofocus></td>
						<td><a
							class="btn btn-lg btn-secondary fw-bold border-white bg-black me-1 ms-2">
								P W </a></td>
						<td><input type="password" id="pw" name="pw"
							class="form-control" placeholder="Password" required></td>
						<th><span style="font-size: 28px; color: yellow">공지사항</span></th>
					</tr>
					<tr>
						<td><a href="#"
							class="btn btn-lg btn-secondary fw-bold border-white bg-black me-2"
							onclick="javascript:userReg()">Sign Up </a></td>
						<td><a href="#"
							class="btn btn-lg btn-secondary fw-bold border-white bg-black me-2"
							onclick="javascript:userSearch()">Find ID/PW</a></td>
						<td colspan=2><button
								class="btn btn-lg btn-primary btn-block pt-2 pb-2 ms-7 me-7"
								type="submit">Login</button></td>
						<th width=640>1. 체온37도이상이신분은 본 매장 이용을 삼가주시기바랍니다 <br>2. 자리에 앉아 마스크를 꼭 착용한 후 이용해 주시기 바랍니다<br>3. 큰소리로 떠들어서 다른사람에게 피해를 주지않도록 합시다</th>
					</tr>
				</table>
			</form>
		</main>
	</div>
</body>
</html>
