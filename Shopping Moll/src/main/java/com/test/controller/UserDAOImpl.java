package com.test.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "com.test.controller.mappers.UserMapper";

	@Override
	public void userInsert(UserDTO userDTO) {
		
		sqlSession.insert(NAMESPACE + ".userInsert", userDTO);
	}

	@Override
	public UserDTO idDupCheck(String userID) {
		
		return sqlSession.selectOne(NAMESPACE + ".idDupCheck", userID);
	}

	@Override
	public UserDTO idpwdCheck(UserDTO userDTO) {
		
		return sqlSession.selectOne(NAMESPACE + ".idpwdCheck", userDTO);
	}

}