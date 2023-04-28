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
			<tr>
				<td rowspan="5"><img alt="" src="${pro.imageloc}"></td>
				<td>이름 : ${pro.pname}</td>
			</tr>
			<tr>
				
				<td>가격 : ${pro.pprice}</td>
			</tr>
			<tr>
				
				<td>수취일 : <input type="date"></td>
			</tr>
			<tr>
				
				<td>결재방법 : <input type="checkbox">현금 <input type="checkbox">카드</td>
			</tr>
			<tr>
				
				<td><input type="button" value="구매하기" onclick="buy()"></td>
			</tr>
	</table>
</div>
<script type="text/javascript">
	function buy(){
		
		alert("구매가 완료되었습니다.");
		location.href = "./mainPage";
	}
</script>
</body>
</html>