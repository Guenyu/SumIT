<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="project.*" errorPage="DBError.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result>0}">
	<script type="text/javascript">
		location.href="Mypage.jsp";
		</script>
</c:if>
<c:if test="${result==0}">

	<script type="text/javascript">
		alert("비밀번호가 틀렸습니다");
		history.back();
	</script>
</c:if>
<c:if test="${result<0}">
	<script type="text/javascript">
		alert("아이디가 없습니다");
		history.back();
	</script>
</c:if>
</body>
</html>