<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그 아웃</title>
</head>
<body>
	<h2>로그 아웃</h2>
	<hr>
	<%
		
		Enumeration enun = session.getAttributeNames();
	
	
		while(enun.hasMoreElements()){
			
			String sName = enun.nextElement().toString(); // 세션 이름 가져오기
			String sValue = session.getAttribute(sName).toString(); // 세션 속성값 가져오기
			
			//out.println("sName");
			//out.println("sValue");
			
			if(sValue.equals("space")){
				session.removeAttribute(sName);
				out.println("로그아웃에 성공하였습니다.");
				
			} else{
				out.println("로그아웃에 실패하였습니다.");
			}
		
		}
		
	%>
	
	세션을 종료후 로그 아웃을 수행하였습니다.<br>
	그동안 수고 많으셨습니다.<br>
	<table border="0">
		<tr>
			<td>
				<form action="main.jsp" method="post">
					<input type="submit" value="메인 화면으로 이동 ▶">
				</form>
			</td>
	</table>
</body>
</html>