package com.films.domain;

/**
 * AbstractOdetail entity provides the base persistence definition of the
 * Odetail entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractOdetail implements java.io.Serializable {

	// Fields

	private Integer odid;
	private Integer ocount;
	private Float omoney;
	private Orders orders;
	private Seat seat;
	private Timetable timetable;

	// Constructors

	/** default constructor */
	public AbstractOdetail() {
	}
	

	public AbstractOdetail(Integer odid) {
		super();
		this.odid = odid;
	}


	public AbstractOdetail(Integer odid, Integer ocount, Float omoney,
			Orders orders, Seat seat, Timetable timetable) {
		super();
		this.odid = odid;
		this.ocount = ocount;
		this.omoney = omoney;
		this.orders = orders;
		this.seat = seat;
		this.timetable = timetable;
	}



	// Property accessors

	public Integer getOdid() {
		return this.odid;
	}

	public void setOdid(Integer odid) {
		this.odid = odid;
	}

	public Orders getOrders() {
		return this.orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public Seat getSeat() {
		return this.seat;
	}

	public void setSeat(Seat seat) {
		this.seat = seat;
	}

	public Integer getOcount() {
		return ocount;
	}

	public void setOcount(Integer ocount) {
		this.ocount = ocount;
	}

	public Float getOmoney() {
		return omoney;
	}

	public void setOmoney(Float omoney) {
		this.omoney = omoney;
	}

	public Timetable getTimetable() {
		return timetable;
	}

	public void setTimetable(Timetable timetable) {
		this.timetable = timetable;
	}

}