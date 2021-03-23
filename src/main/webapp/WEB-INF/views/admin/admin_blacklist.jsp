<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.79.0">
    <title>항상 행복하세요~(❁´◡`❁)</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/dashboard/">

    

    <!-- Bootstrap core CSS -->
<link href="resource/css/bootstrap.min.css" rel="stylesheet">

    <style>
    

      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      #wrap{
            width:600px;
            margin-left:auto; 
            margin-right:auto;
            text-align:left;
        }
        
      table{
            border:4px solid skyblue;
            width:900px;
            height:100px;
            text-align:center;
      }
        
      td{
            border:2px double skyblue;
      }
      th{
            border:2px double skyblue;
      }
      
     
    </style>

    
    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
<script>
	function logincode(){
		window.open("Admin/admin_random_logincode.jsp","","width=500, height=150");
	}
	function randompw(){
		window.open("Admin/admin_random_pw.jsp","","width=500, height=200");
	}
	function send(){
		if(admin.tel.value==""){
			alert("전화번호를 입력해 주세요");
			return;
		}
		if(admin.reason.value==""){
			alert("사유를 입력해 주세요");
			return;
		}
		admin.submit();
	}
</script>
  </head>
  <body>
    
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">영진 PC방</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
  <ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
      <a class="nav-link" href="#">Sign out</a>
    </li>
  </ul>
</header>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="javascript:logincode()">
              <span data-feather="home"></span>
             비회원코드발급
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="javascript:randompw()">
              <span data-feather="file"></span>
            임시비밀번호발급
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./admin?cmd=admin_user_cklist">
              <span data-feather="shopping-cart"></span>
             회원 관리
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./admin?cmd=admin_saleslist">
              <span data-feather="shopping-cart"></span>
             매출관리
            </a>
          </li>
          
            <li class="nav-item">
            <a class="nav-link" href="./admin?cmd=admin_foodlist">
              <span data-feather="shopping-cart"></span>
             재고입고
            </a>
          </li>
          
            <li class="nav-item">
            <a class="nav-link" href="./admin?cmd=admin_blacklist">
              <span data-feather="shopping-cart"></span>
             블랙리스트추가
            </a>
          </li>
          
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <span>매출</span>
          <a class="link-secondary" href="#" aria-label="Add a new report">
            <span data-feather="plus-circle"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              이번달 매출
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              	음식 매출
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              PC 매출
            </a>
          </li>
          
        </ul>
      </div>
    </nav>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">블랙리스트 추가</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group me-2">
            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar"></span>
            This week
          </button>
        </div>
      </div>
      <!-- 재고현황 내용 넣는 부분 -->
      <div style = "position:relative">
		<form method="post" name="admin" action="./admin?cmd=admin_blacklist_pro">
		<table border="1">
			<tr>
			<td><b>블랙리스트</b></td>
		</tr>
		<tr>
			<td>블랙리스트로 등록하실 정보를 입력해 주세요</td>
		</tr>
		<tr>	
			<td><b>전화번호</b><input type="text" name="tel" value=""></td>
		</tr>
		<tr>
			<td><b>사유</b><input type="text" name="reason" value=""></td>
		</tr>
		<tr>
			<td>
				<input type="button" value="등록" onClick="javascript:send()">
				<input type="button" value="취소" onClick="history.back()">
			</td>	
		</tr>
		</table>
		</form>
	  </div>



      <canvas class="my-4 w-100" id="myChart" width="900" height="400"></canvas>
      
    </main>
  </div>
</div>


    <script src="resource/js/bootstrap.bundle.min.js"></script>

      <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="dashboard.js"></script>
  </body>
</html>
