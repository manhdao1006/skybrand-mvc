<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="block_login">
		<div class="formLogin">
			<h3 class="form_main">${requestScope.error}</h3>
			<form class="form_main" action="loginaccount" method="post">
				<div class="lbl">Enter username</div>
				<input class="txt" type="text" name="user" /><br />
				<div class="lbl">Enter password</div>
				<input class="txt" type="password" name="pass" /><br />
				<div class="ckb">
					<input type="checkbox" />Remember me?
				</div>
				<div class="btnLogin">
					<input class="btn" type="submit" value="LOGIN" />
				</div>
			</form>
		</div>
	</div>
</body>
</html>