package com.test.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "com.test.controller.mappers.ProductMapper";
	
	@Override
	public List<ProductDTO> select() {
		
		return sqlSession.selectList(NAMESPACE + ".selectAll");
	}

	@Override
	public ProductDTO selectOne(int pnumber) {
		 
		return sqlSession.selectOne(NAMESPACE + ".selectOne", pnumber);
		
	}

	@Override
	public void insertBasket(BasketDTO basketDTO) {
		sqlSession.insert(NAMESPACE + ".insertBasket", basketDTO);
	}

	@Override
	public List<BasketDTO> selectAllBasket() {
		
		return sqlSession.selectList(NAMESPACE + ".selectAllBasket");
	}

	@Override
	public void deleteOne(int pnumber) {
		
		sqlSession.delete(NAMESPACE + ".deleteOne", pnumber);
	}
	
	

}