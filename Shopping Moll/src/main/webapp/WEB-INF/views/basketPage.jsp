<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<table>
		<c:forEach items="${basketList}" var="basketList">
			<tr>
				<td>${basketList.pnumber}</td>
				<td>${basketList.pname}</td>
				<td>${basketList.pprice}</td>
				<td><a href="./buyPage?pnumber=${basketList.pnumber}">구매하기</a></td>
				<td><a href="./deleteOne?pnumber=${basketList.pnumber}">삭제하기</a></td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>