<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<h2>관리자 로그인 성공</h2>
	<hr>
	<%
		
		request.setCharacterEncoding("utf-8");	
	
		String m_id = request.getParameter("userID");
		String m_pw = request.getParameter("userPW");
		
		if(m_id.equals("space") && m_pw.equals("123456")){
			session.setAttribute("adminId", m_id);
			session.setAttribute("adminPw", m_pw);
			
			out.println("관리자 로그인 성공<br>");
			out.println("관리자 ["+ m_id +"]님이 로그인 하였습니다.<br>");
			
		} else {
			response.sendRedirect("loginErr.jsp");
		}

	%>
	<br>
	<table border="0">
		<tr>
			<td>
				<form action="membersList.jsp" method="post">
					<input type="submit" value="◀ 등록 회원 관리하기">
				</form>
			</td>
			<td>
				<form action="logout.jsp" method="post">
					<input type="submit" value="로그 아웃 ▶">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>