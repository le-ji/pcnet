<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="h-100">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.79.0">
<title>AdminLogin</title>

<script>

	function log() {
		if (admin.id.value == "" || admin.pw.value == "") {
			alert("必須情報です。");
			return;
		}
		admin.submit();
	}
</script>
<link href="/resources/css/AdminLogin.css" rel="stylesheet">
<body>
<div class="login">
  <h1>AdminLogin</h1>
    <form method="post" name="admin" action="/admin/adminlogin">
      <input type="text" name="id" placeholder="AdminId" required="required" />
        <input type="password" name="pw" placeholder="Password" required="required" />
        <button type="submit" class="btn btn-primary btn-block btn-large">login</button>
    </form>
</div>
</body>
</html>