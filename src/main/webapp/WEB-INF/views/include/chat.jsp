<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-1.9.0.js"></script>
</head>
<script type="text/javascript">
	var ws;
	var wsUri = "ws://localhost:8087/chat1";
	var userid = '${param.id}';

	function connect() {
		ws = new WebSocket(wsUri);

		ws.onopen = function() {
			console.log('연결 성공');
			register();
		};
		ws.onmessage = function(e) {
			var data = e.data;
			var targetId = null;
			var message = null;
			
			var strArray = data.split("|");
			
			targetId = strArray[0];
			message = strArray[1];
			
			addMsg(targetId,message);
		};
		ws.onclose = function() {
			console.log('연결끊김');
		};

	}
	
	function addMsg(targetId,message) {
		var chat = $('#msgArea').val();
		chat = chat + "\n" + targetId+":"+message;
		$('#msgArea').val(chat);
	}

	function register() {
		var msg = {
			type : "register",
			userid : '${param.id}'
		};
		ws.send(JSON.stringify(msg));
	}
	
	function sendMsg() {
		var msg={
				type : "caht",
				target : $("#targetUser").val(),
				userid : '${param.id}',
				message : $("#chatMsg").val()
		};
		ws.send(JSON.stringify(msg));
	};
	
	$(function() {
		connect();
		$('#btnSend').on("click", function() {
			var chat = $("#msgArea").val();
			chat = chat + "\n ${param.id}님 : " + $("#chatMsg").val();
			$("#msgArea").val(chat);
			sendMsg();
			$("#chatMsg").val("");
		})
	});
</script>
</head>
<body>
<textarea rows="5" cols="30" id="msgArea"  style="width:400px;height:150px">
</textarea>

<c:if test="${param.id == 'admin'}">
<br> 회원ID : <input type="text" id="targetUser">
</c:if>
<c:if test="${param.id != 'admin'}">
<input type="hidden" id="targetUser" value="admin">
</c:if>
<br>메세지 : <input type="text" id="chatMsg">
<input type="button" value="전송" id="btnSend">
<br>

</body>
</html>