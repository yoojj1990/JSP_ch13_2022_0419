<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script type="text/javascript" src="js/validation.js"></script>
</head>
<body>
	<h2>회원 가입</h2>
	<hr>
	<form action="insertDB.jsp" method="post" name="user_info" onsubmit="return checkFun()">
		아이디 : <input type="text" name="userID" size="16"><br><br>
		비밀번호 : <input type="password" name="userPW" size="16"><br><br>
		이름 : <input type="text" name="userNAME" size="16"><br><br>
		이메일 : <input type="email" name="userMAIL" size="30"><br><br>
		<input type="reset" value=" ◀ 다시작성 ">
		<input type="submit" value=" 가입하기 ▶ ">
	</form>
</body>
</html>