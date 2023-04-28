<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<form:form action="" id="frm" modelAttribute="userDTO">
		<table>
			<tr align="center">
				<td align="center"><h1>NAVER</h1></td>
			</tr>
			<tr>
				<td>
					<label>아이디</label><br/>
					<span style="border: 1px solid gray;">
						<input type="text" name="userID" id="userID"  value="${userDTO.userID}" size="50" maxlength="20" style="border: 0;">
						<span>@naver.com</span></span><a href="javascript:dupCheck()">중복체크</a><br/>
					<label><input type="text" id="idLabel" style="border: 0" value="${idNull}">
							<form:errors path="userID"></form:errors></label>
				</td>
			</tr>
			<tr>
				<td>
					<label>비밀번호</label><br/>
					<span style="border: 1px solid gray;"><input type="password" name="userPassword" id="userPassword" value="${userDTO.userPassword}" style="border: 0;" size="62" maxlength="20">
							<span><img alt="" src="resources/img/password.png" width="20" height="20"></span></span><br/>
					<label><input type="text" id="passwordLabel" style="border: 0" value="${checkError}">
							<form:errors path="userPassword"></form:errors></label>
				</td>
			</tr>
			<tr>
				<td>
					<label>비밀번호 재확인</label><br/>
					<span style="border: 1px solid gray;"><input type="password" name="passwordReCheck" id="passwordReCheck" value="${userDTO.passwordReCheck}" style="border: 0;" size="62" maxlength="20">
							<span><img alt="" src="resources/img/password.png" width="20" height="20"></span></span><br/>
					<label><input type="text" id="passwordReCheckLabel" style="border: 0">
						<form:errors path="passwordReCheck"></form:errors></label>
				</td>
			</tr>
			<tr>
				<td>
					<label>이름</label><br/>
					<span style="border: 2px solid gray;"><input type="text" name="userName" id="userName" value="${userDTO.userName}" style="border: 0; height: 40px; width: 470px;" size="66" maxlength="20"></span><br/>
					<label><input type="text" id="userNameLabel" style="border: 0">
						<form:errors path="userName"></form:errors></label>
				</td>
			</tr>
			<tr>
				<td>
					<label>생년월일</label><br/>
					<span style="border: 1px solid gray;"><input type="text" name="userBirthYear" id="userBirthYear" value="${userDTO.userBirthYear}" style="border: 0;" placeholder="년(4자)" maxlength="4"></span>
					<span style="border: 1px solid gray;">
						<select name="userBirthMonth" id="userBirthMonth" value="${userDTO.userBirthMonth}" style="border: 0">
							<option value="0">월</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>
					</span>
					<span style="border: 1px solid gray;"><input type="text" name="userBirthDay" id="userBirthDay" value="${userDTO.userBirthDay}" style="border: 0;" placeholder="일" maxlength="2"></span><br/>
					<label><input type="text" id="userBirthLabel" style="border: 0">
						<form:errors path="userBirthYear"></form:errors>
						<form:errors path="userBirthMonth"></form:errors>
						<form:errors path="userBirthDay"></form:errors></label>
							
				</td>
			</tr>
			<tr>
				<td>
					<label>성별</label><br/>
					<span style="border: 1px solid gray; height: 50px;">
						<select name="userGender" id="userGender" value="${userDTO.userGender}" style="border: 0; width: 470px; height: 40px;">
							<option value="0">성별</option>
							<option value="1">남자</option>
							<option value="2">여자</option>
							<option value="3">선택안함</option>
						</select>
					</span><br/>
					<label><input type="text" id="userGenderLabel" style="border: 0">
						<form:errors path="userGender"></form:errors></label>
				</td>
			</tr>
			<tr>
				<td>
					<label>본인 확인 이메일(선택)</label><br/>
					<span style="border: 1px solid gray;"><input type="text" name="userEmail" id="userEmail" value="${userDTO.userEmail}" style="border: 0;" maxlength="40"></span><br/>
					<label><input type="text" id="userEmailLabel" style="border: 0"></label>
				</td>
			</tr>
			<tr>
				<td>
					<label>휴대전화</label><br/>
					<span style="border: 1px solid gray;">
						<select>
							<option>일본 +81</option>
						</select>
					</span><br/>
					<span>
						<input type="text" name="userPhone" id="userPhone" value="${userDTO.userPhone}" placeholder="전화번호 입력" maxlength="20">
						<span><a href="javascript:getRandomNumber6()">인증번호 받기</a></span>
					</span><br/>
					<span>
						<input type="text" id="checkingNumber" readonly="readonly">
						<input type="text" id="userPhoneCheckNumber" placeholder="인증번호를 입력하세요">
					</span><br/>
					<label><input type="text" id="userPhoneLabel" style="border: 0">
						<form:errors path="userPhone"></form:errors></label>
				
				
				</td>
			</tr>
			<tr>
				<td align="center"><span><a href="javascript:doMake()" id="now">가입하기</a></span></td>
			</tr>
			<tr>
				<td align="center"><p style="font-size: small;">이용약관 ㅣ 개인정보처리방침 ㅣ 책임의 한계와 법적고지 ㅣ 회원정보 고객센터<br/>
					c NAVER Corp.</p></td>
			</tr>
			
		</table>
	</form:form>
</div>
<script type="text/javascript">
	function dupCheck(){
		
		if(frm.userID.value == ""){
			
			frm.idLabel.value = "아이디를 입력해주세요.";
			return;	
		}
		$.ajax({
		
			method : "post",
			url : "./dupCheck",
			data : { id : frm.userID.value },
			success : function(resp){
				
				if(resp == "fail"){
					
					frm.idLabel.value = "중복된 ID입니다.";
				}else{
					
					frm.idLabel.value = "사용가능한 ID입니다.";
				}
			},
			error : function(){
				
				alert("error");
			}
		});
	}
	function getRandomNumber6(){
		
		if(frm.userPhone.value == ""){
			
			alert("전화번호를 입력해주세요");
			return;
		}
		else{
			$.ajax({
				url : "./register.do",
				type : "post",
				data : {
					dto : "${dto}"	
				},
				
				success : function(data){
					
					frm.checkingNumber.value = data.dto;
				},
				error : function(){
					
					alert("error!");
				}
			});
		}
	}
	function doMake(){
		
		if(frm.userID.value == ""){
			
			frm.idLabel.value = "아이디를 입력해주세요.";
			return;
			
		}else{
			
			frm.idLabel.value = "";
			
		}
		
		var check_en = /[a-zA-Z\s]+$/; // 영어체크
		var check_jap = /[ぁ-ゔ]+|[ァ-ヴー]+[々〆〤]+/u;
		
		if(! check_en.test(frm.id.value) && ! check_jap.test(frm.id.value)){
			
			frm.idLabel.value = "영어, 일본어로 입력해주세요.";	
			
		}else{
			
			frm.idLabel.value = "";	
			
		}
		if(frm.userPassword.value == ""){
			
			frm.passwordLabel.value = "비밀번호를 입력해주세요.";
			return;	
			
		}else{
			
			frm.passwordLabel.value = "";
			
		}
		if(frm.passwordReCheck.value == ""){
			
			frm.passwordReCheckLabel.value = "재확인 비밀번호를 입력해주세요.";
			return;
			
		}else{
			
			frm.passwordReCheckLabel.value = "";	
			
		}
		if(frm.userPassword.value != frm.passwordReCheck.value){
			
			frm.passwordReCheckLabel.value = "작성된 비밀번호와 다릅니다.";
			return;	
			
		}
		if(frm.userName.value == ""){
			
			frm.userNameLabel.value = "이름을 입력해주세요.";
			return;	
			
		}else{
			
			frm.userNameLabel.value = "";
			
		}
		if(frm.userBirthYear.value == "" || frm.userBirthMonth.value == 0 || frm.userBirthDay.value == ""){
			
			frm.userBirthLabel.value = "생년월일을 끝까지 입력해주세요.";
			return;
			
		}else if(frm.userBirthYear.value <= 1900 || frm.userBirthYear.value > 2023){
			
			frm.userBirthLabel.value = "정말이세요? 년도가 맞지 않습니다.";
			return;
			
		}else{
			
			frm.userBirthLabel.value = "";
			
		}
		if(frm.userGender.value == 0){
			
			frm.userGenderLabel.value = "성별을 입력해주세요.";
			return;
			
		}else{
			
			frm.userGenderLabel.value = "";
			
		}
		if(frm.checkingNumber.value == ""){
			
			frm.userPhoneLabel.value = "번호인증을 먼저 해주세요.";
			return;
			
		}
		if(frm.checkingNumber.value != frm.userPhoneCheckNumber.value){
			
			alert("인증번호가 다릅니다!");
			return;
			
		}
		
		frm.action = "./doMake";
		frm.method = "post";
		frm.submit();
		
	}
</script>
</body>
</html>