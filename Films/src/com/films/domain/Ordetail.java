package com.films.domain;

import java.util.Date;

public class Ordetail {

	private int id;
	private Date date;
	private String state;
	private float money;
	private String fname;
	private String uname;
	private int tid;
	private String mobile;
	private String playdate;
	private String playtime;
	private String senum;
	private String serow;
	

	public Ordetail() {
		super();
	}

	public Ordetail(int id, Date date, String state, float money, String fname, String playdate, String playtime) {
		super();
		this.id = id;
		this.date = date;
		this.state = state;
		this.money = money;
		this.fname = fname;
		this.playdate = playdate;
		this.playtime = playtime;
	}

	public Ordetail(int id, Date date, String state, float money, String fname,
			String playdate, String playtime, String senum, String serow) {
		super();
		this.id = id;
		this.date = date;
		this.state = state;
		this.money = money;
		this.fname = fname;
		this.playdate = playdate;
		this.playtime = playtime;
		this.senum = senum;
		this.serow = serow;
	}

	public Ordetail(int id, Date date, String state, float money, String fname,
			String uname, int tid, String mobile, String playdate,
			String playtime) {
		super();
		this.id = id;
		this.date = date;
		this.state = state;
		this.money = money;
		this.fname = fname;
		this.uname = uname;
		this.tid = tid;
		this.mobile = mobile;
		this.playdate = playdate;
		this.playtime = playtime;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPlaydate() {
		return playdate;
	}

	public void setPlaydate(String playdate) {
		this.playdate = playdate;
	}

	public String getPlaytime() {
		return playtime;
	}

	public void setPlaytime(String playtime) {
		this.playtime = playtime;
	}

	public String getSenum() {
		return senum;
	}

	public void setSenum(String senum) {
		this.senum = senum;
	}

	public String getSerow() {
		return serow;
	}

	public void setSerow(String serow) {
		this.serow = serow;
	}	
}
