package com.test.controller;

public class ProductDTO {

	private int pnumber;
	
	private String pname;
	
	private String pprice;
	
	private String imageloc;
	

	public int getPnumber() {
		return pnumber;
	}

	public void setPnumber(int pnumber) {
		this.pnumber = pnumber;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPprice() {
		return pprice;
	}

	public void setPprice(String pprice) {
		this.pprice = pprice;
	}

	public String getImageloc() {
		return imageloc;
	}

	public void setImageloc(String imageloc) {
		this.imageloc = imageloc;
	}
}