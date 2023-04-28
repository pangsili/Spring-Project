<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<br/><br/>

<a href="./mainPage">next</a>

<div>
	<table>
		<c:forEach items="${productList}" var="productList">
			<tr>
				<td>${productList.pnumber}</td>
				<td>${productList.pname}</td>
				<td>${productList.pprice}</td>
				<td>${productList.imageloc}</td>
			</tr>
		</c:forEach>
	</table>
</div>


<div>
	<table>
			<tr>
				<td>${list.pnumber}</td>
				<td>${list.pname}</td>
				<td>${list.pprice}</td>
				<td>${list.imageloc}</td>
			</tr>
	</table>
</div>
</body>
</html>