<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.79.0">
<title>ADMIN MAIN PAGE</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/dashboard/">



<!-- Bootstrap core CSS -->
<link href="/resources/css/bootstrap-min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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

#wrap {
	width: 600px;
	margin-left: auto;
	margin-right: auto;
	text-align: left;
}

table {
	border: 4px solid skyblue;
	width: 1000px;
	height: 100px;
	text-align: center;
}

td {
	border: 2px double skyblue;
}

th {
	border: 2px double skyblue;
}

.navi {
	overflow: hidden;
	padding: 16px 0;
}

.navi ul, li {
	float: left;
	padding: 0 20px;
	text-align: center;
}
</style>


<!-- Custom styles for this template -->
<link href="dashboard.css" rel="stylesheet">
<script>
	function logincode() {
		url = "/admin/adminUnKnown"
		window.open(url, "", "width=500, height=150");
	}
	function randompw() {
		url = "/admin/admin_random_logincode"
		window.open(url, "", "width=500, height=200");
	}
	function adminchat() {
		url = "/chat?id=admin";
		window.open(url, "", "width=500, height=300");
	}
</script>
</head>
<body>

	<header
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="/adminList">ネットカフェ</a>
		<ul class="navi">
			<li class="nav-item"><a class="nav-link active"
				aria-current="page" href="javascript:logincode()"> <span
					data-feather="home"></span> 非会員コード発行
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="javascript:randompw()"> <span data-feather="file"></span>
					臨時パスワードの発行
			</a></li>
			<li class="nav-item"><a class="nav-link" href="admin/userList"> <span
					data-feather="shopping-cart"></span> 会員管理
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="../admin?cmd=admin_blacklist"> <span
					data-feather="shopping-cart"></span> ブラックリスト追加
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="javascript:adminchat()"> <span
					data-feather="shopping-cart"></span> メッセージ
			</a></li>
		</ul>

	</header>

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">Admin</h1>
				</div>
				<!-- 재고현황 내용 넣는 부분 -->
				<div style="position: relative"></div>
				<canvas class="my-4 w-100" id="myChart" width="900" height="400"></canvas>
			</main>


	<script src="/resources/js/bootstrap.bundle.min.js"></script>

    <script src="/resources/js/bootstrap.bundle.min.js"></script>

      <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="dashboard.js"></script>
  </body>
</html>
