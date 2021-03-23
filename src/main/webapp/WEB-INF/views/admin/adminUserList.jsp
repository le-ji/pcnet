<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="pageObject" tagdir="/WEB-INF/tags"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.79.0">
<title>ADMIN PAGE</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/dashboard/">
<!-- Bootstrap core CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
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

.dataRow:hover {
	background: #ddd;
	cursor: pointer;
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
	function adminLogout(idx) {
		url = "/admin/adminUserLogout?idx="+idx;
		window.open(url, "", "width=500, height=200");
	}
/* 	$(function() {
		$(".dataRow").click(function() {
			var no = $(this).find(".no").text();
			url = "/admin/adminUserTime?idx="+no;
			window.open(url, "", "width=500, height=200");
		});
	}); */
</script>
</head>
<body>
	<header
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">영진
			PC방</a>
		<!-- 		<ul class="navi">
			<li class="nav-item"><a class="nav-link active"
				aria-current="page" href="javascript:logincode()"> <span
					data-feather="home"></span> 非会員コード発行
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="javascript:randompw()"> <span data-feather="file"></span>
					臨時パスワードの発行
			</a></li>
			<li class="nav-item"><a class="nav-link" href="userList"> <span
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
 -->
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<input class="form-control form-control-dark w-100" type="text"
			placeholder="Search" aria-label="Search">
		<ul class="navbar-nav px-3">
			<li class="nav-item text-nowrap"><a class="nav-link" href="#">Sign
					out</a></li>
		</ul>

	</header>

	<div class="container-fluid">
	<div class="row">
		<nav id="sidebarMenu"
			class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
			<div class="position-sticky pt-3">
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="javascript:logincode()"> <span
							data-feather="home"></span> 비회원코드발급
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="javascript:randompw()"> <span data-feather="file"></span>
							임시비밀번호발급
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="javascript:adminchat()"> <span data-feather="file"></span>
							메세지
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="./admin?cmd=admin_user_cklist"> <span
							data-feather="shopping-cart"></span> 회원 관리
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="./admin?cmd=admin_saleslist"> <span
							data-feather="shopping-cart"></span> 매출관리
					</a></li>

					<li class="nav-item"><a class="nav-link"
						href="./admin?cmd=admin_foodlist"> <span
							data-feather="shopping-cart"></span> 재고입고
					</a></li>

					<li class="nav-item"><a class="nav-link"
						href="./admin?cmd=admin_blacklist"> <span
							data-feather="shopping-cart"></span> 블랙리스트추가
					</a></li>

				</ul>


			</div>
		</nav>


		<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

			<div
				class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				<h1 class="h1" align="left">회원리스트</h1>
				<h2></h2>
			</div>

			<!-- 재고현황 내용 넣는 부분 -->
			<div style="position: relative">
				<form name="item">
					<table class="table" border="1" style="width: 1200px;">
						<tr>
							<%-- <td colspan="13" align="right">전체:<b>${userCnt}명</b></td> --%>
						</tr>
						<tr>
							<td>UserNumber</td>
							<td>UserID</td>
							<td>UserName</td>
							<td>MOBLE PHONE</td>
							<td>Birth</td>
							<td>JOINDATE</td>
							<td>LOGINDATE</td>
							<td>LOGOUTDATE</td>
							<td>LOGOUT</td>
						</tr>

						<c:if test="${empty list }">
							<tr>
								<td>登録された会員がありません</td>
							</tr>
						</c:if>

						<c:if test="${!empty list}">
							<c:forEach var="vo" items="${list}">
								<tr class="dataRow">
									<td class="no">${vo.idx }</td>
									<td>${vo.id }</td>
									<td>${vo.name }</td>
									<td>${vo.tel }</td>
									<td>${vo.birth}</td>
									<td>${vo.joinDate}</td>
									<td>${vo.loginDate }</td>
									<td>${vo.endDate }</td>
									<td><div class="form-group">
											<button type="button"
												class="btn btn-outline-danger btn-sm px-3"
												onclick="javascript:adminLogout(${vo.idx})">
												<i class="fa fa-envelope">Logout</i>&nbsp;
											</button>
										</div></td>
								</tr>
							</c:forEach>
						</c:if>
						<tr>
							<td colspan="9" style="text-align: center;"><pageObject:pageNav
									listURI="userList" pageObject="${pageObject}" /></td>
						</tr>
					</table>
				</form>
			</div>
			<div class="container">
				<div>
					<form class="navbar-form">
						<div class="input-group">
							<div class="form-group navbar-left">
								<select name="key" class="form-control">
									<option value="t" ${(pageObject.key == "t")? "selected" : ""}>ID</option>
									<option value="c" ${(pageObject.key == "c")? "selected" : ""}>MOBLE
										PHONE</option>
									<option value="w" ${(pageObject.key == "w")? "selected" : ""}>Birth</option>
									<option value="n" ${(pageObject.key == "n")? "selected" : ""}>UserName</option>
								</select> <input type="text" class="form-control" placeholder="Search"
									name="word" value="${pageObject.word}">
							</div>
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<canvas class="my-4 w-100" id="myChart" width="900" height="400"></canvas>
		</main>


		<script src="resource/js/bootstrap.bundle.min.js"></script>

		<script
			src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
			integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
			integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
			crossorigin="anonymous"></script>
		<script src="dashboard.js"></script>
</body>
</html>
