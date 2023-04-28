<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#move {
		color: white;
		text-decoration: none;
		background-color: orange;
		padding: 15px;
		display: inline-block;
		width: 350px;
		text-align: center;
		margin: 5px;
	}
	
	#line {
		border-bottom: 1px solid black;
	}
</style>
</head>
<body>
<div align="center">
	<table>
		<tr>
			<td id="line"><h1 align="center">TMON</h1></td>
		</tr>
		<tr align="center">
			<td><h2 align="center">会員加入</h2></td>
		</tr>
		<tr align="center">
			<td>
				<h3>
					TMON会員になると,色んな恵沢を<br/>
					もらえます。
				</h3>
			</td>
		</tr>
		<tr align="center">
			<td><a href="./agreePage" id="move">チーモン簡単個人会員</a></td>
		</tr>
		<tr align="center">
			<td>
				<a href="javascript:alert('準備中な機能です。');">
					<img alt="" src="resources/img/naver.webp" width="50px" height="50px"></a>
				<a href="javascript:alert('準備中な機能です。');">
					<img alt="" src="resources/img/kakao.png" width="50px" height="50px"></a>
			</td>
		</tr>
	</table>
</div>
</body>
</html>