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
	<table border="1">
		<tr>
			<td rowspan="3"><img alt="" src="${pro.imageloc}"></td>
			<td>${pro.pname}</td>
		</tr>
		<tr>
			
			<td>${pro.pprice}</td>
		</tr>
		<tr>
			
			<td><a href="./basketPage?pnumber=${pro.pnumber}&pname=${pro.pname}&pprice=${pro.pprice}">장바구니넣기</a> <a href="./buyPage?pnumber=${pro.pnumber}">바로구매하기</a></td>
		</tr>
	</table>
</div>
</body>
</html>