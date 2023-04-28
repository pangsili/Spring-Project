package com.test.controller;

import com.test.controller.UserDTO;

public interface UserDAO {

	public void userInsert(UserDTO userDTO);
	
	public UserDTO idDupCheck(String userID);
	
	public UserDTO idpwdCheck(UserDTO userDTO);
}
