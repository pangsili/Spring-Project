package com.test.controller;

import java.util.List;

public interface ProductDAO {

	public List<ProductDTO> select();
	
	public ProductDTO selectOne(int pnumber);
	
	public void insertBasket(BasketDTO basketDTO);
	
	public List<BasketDTO> selectAllBasket();
	
	public void deleteOne(int pnumber);
}