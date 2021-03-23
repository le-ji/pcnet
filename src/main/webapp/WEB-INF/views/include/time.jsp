<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>

<!-- 웹 소켓 사용해서 로그인중 체크 -->

<script type="text/javascript">
	$(function() {
		var wsUri = "ws://localhost:8087/time";
		websocket = new WebSocket(wsUri);
		websocket.onopen = function(evt) {
			console.log('연결 성공');
			websocket.send("${vo.id}");
		};
		websocket.onmessage = function(event) {
			var data = event.data;
			var mmtime = null;
			var time = null;
			var logincheck = null;

			var strArray = data.split("|");

			time = strArray[0];
			mmtime = strArray[1];
			logincheck = strArray[2];

			$('#time').text(time);
			$('#mmtime').text(mmtime);

			if(logincheck == '0'){
				location.href="/";
			}
		};
		websocket.onerror = function(evt) {
			onError(evt);
		};
		webSocket.onclose = function(event) {
			// Socket 닫힘
			writeToScreen("Server Connection closed");

		};
	})
</script>
</head>
<body>

	<div class="cover-container d-flex w-100 h-80 p-4 mx-auto flex-column">
		<header class="mb-auto">
			<div>
				<h3 class="lead mt-2">${vo.id}님</h3>
				<h1 class="lead mt-2">
					사용시간:<span id="mmtime" class="badge bg-theme"></span> <br>남은시간:<span
						id="time" class="badge bg-theme"></span> 
				</h1>
			</div>
		</header>
	</div>
</body>
</html>