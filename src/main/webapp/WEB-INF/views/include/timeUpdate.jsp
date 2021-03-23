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
		var wsUri = "ws://localhost:8087/timeUpdate";
		websocket = new WebSocket(wsUri);
		websocket.onopen = function(evt) {
			console.log('연결 성공');
			websocket.send("${vo.id}");
		};
		websocket.onmessage = function(event) {
			var data = event.date;
			$('#check').text(data);

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
<span id="check" class="badge bg-theme"></span>
</body>
</html>