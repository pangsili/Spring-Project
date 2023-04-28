package com.test.controller;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class UserDTO {

	@NotBlank(message = "id를 입력해주세요.")
	@Pattern(regexp = "([a-zA-Z]){2,20}", message = "id는 영어나 일본어 2 ~ 20자 이내이어야 합니다.")
	private String userID;
	
	@NotEmpty(message = "pwd를 입력해주세요.")
	@Size(min = 2, max = 20, message = "비밀번호는 2글자에서 20글자까지입니다.")
	private String userPassword;
	
	@NotEmpty(message = "pwdRe를 입력해주세요.")
	@Size(min = 2, max = 20, message = "재확인비밀번호는 2글자에서 20글자까지입니다.")
	private String passwordReCheck;
	
	@NotEmpty(message = "Name를 입력해주세요.")
	@Size(min = 2, max = 20, message = "이름은 2글자에서 20글자까지입니다.")
	private String userName;
	
	
	@NotEmpty(message = "년도를 입력해주세요.")
	@Pattern(regexp = "([0-9]){4,4}", message = "숫자로만 입력해주세요.")
	@Range(min = 1900, max = 2023, message = "년도가 맞지 않습니다.")
	private String userBirthYear;
	
	@Range(min = 1, max = 12, message = "월를 입력해주세요.")
	private String userBirthMonth;
	
	@NotEmpty(message = "일를 입력해주세요.")
	@Range(min = 1, max = 31, message = "일수가 맞지 않습니다.")
	private String userBirthDay;
	
	private String userBirth = userBirthYear + "/" + userBirthMonth + "/" + userBirthDay;
	
	
	@Range(min = 1, max = 3, message = "성를 입력해주세요.")
	private String userGender;
	
	private String userEmail; 
	
	@NotEmpty(message = "전화번호를 입력해주세요.")
	@Pattern(regexp = "([0-9]){5,20}", message = "전화번호는 숫자로만 자릿수를 지켜야 합니다.")
	private String userPhone;


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public UserDTO(String userID, String userPassword, String userName, String userBirthYear, String userBirthMonth,
			String userBirthDay, String userBirth, String userGender, String userEmail, String userPhone, String passwordReCheck) {
		super();
		this.userID = userID;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userBirthYear = userBirthYear;
		this.userBirthMonth = userBirthMonth;
		this.userBirthDay = userBirthDay;
		this.userBirth = userBirth;
		this.userGender = userGender;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.passwordReCheck = passwordReCheck;
	}


	public String getPasswordReCheck() {
		return passwordReCheck;
	}


	public void setPasswordReCheck(String passwordReCheck) {
		this.passwordReCheck = passwordReCheck;
	}


	public String getUserID() {
		return userID;
	}


	public void setUserID(String userID) {
		this.userID = userID;
	}


	public String getUserPassword() {
		return userPassword;
	}


	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserBirthYear() {
		return userBirthYear;
	}


	public void setUserBirthYear(String userBirthYear) {
		this.userBirthYear = userBirthYear;
	}


	public String getUserBirthMonth() {
		return userBirthMonth;
	}


	public void setUserBirthMonth(String userBirthMonth) {
		this.userBirthMonth = userBirthMonth;
	}


	public String getUserBirthDay() {
		return userBirthDay;
	}


	public void setUserBirthDay(String userBirthDay) {
		this.userBirthDay = userBirthDay;
	}


	public String getUserBirth() {
		return userBirth;
	}


	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}


	public String getUserGender() {
		return userGender;
	}


	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	public String getUserPhone() {
		return userPhone;
	}


	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}


	public UserDTO() {
		
	}
}