<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
</head>
<body>
<div>
	<form:form action="" id="frm" modelAttribute="loginDTO">
		<table>
			<tr>
				<td>ID : </td>
				<td colspan="2"><input type="text" name="userID" id="userID">
								<form:errors path="userID"></form:errors></td>
				<td></td>
			</tr>
			<tr>
				<td>PWD : </td>
				<td colspan="2"><input type="text" name="userPassword" id="userPassword">
								<form:errors path="userPassword"></form:errors></td>
				<td></td>
			</tr>
			<tr>
				<td><a href="javascript:doLoginCheck()">로그인</a></td>
				<td><a href="./selectHowPage">회원가입</a></td>
				<td><a href="./mainPage">돌아가기</a></td>
			</tr>
		</table>
	</form:form>
</div>
<script type="text/javascript">
	
	function doLoginCheck(){
		
		if(frm.userID.value == ""){
			
			alert("id를 입력해주세요.");
			return;
		}
		if(frm.userPassword.value == ""){
			
			alert("pwd를 입력해주세요.");
			return;
		}
		$.ajax({
			
			method : "post",
			url : "./idpwdCheck",
			data : {
				
				id : frm.userID.value, pwd : frm.userPassword.value
			},
			success : function(result){
				
				if(result == "success"){
					
					alert("로그인 되었습니다.");
					location.href = "./mainPage";
				}else{
					
					alert("계정 정보가 맞지 않습니다.");
					location.href = "./loginPage";
				}
			},
			error : function(){
				
				alert("error");
			}
		});
	}
</script>
</body>
</html>