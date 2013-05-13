package com.films.domain;

public class Selected {

	private String serow;
	private String senum;
	
	public Selected(String serow, String senum) {
		super();
		this.serow = serow;
		this.senum = senum;
	}
	public String getSerow() {
		return serow;
	}
	public void setSerow(String serow) {
		this.serow = serow;
	}
	public String getSenum() {
		return senum;
	}
	public void setSenum(String senum) {
		this.senum = senum;
	}
}
