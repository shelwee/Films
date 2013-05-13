package com.films.domain;

/**
 * Odetail entity. @author MyEclipse Persistence Tools
 */
public class Odetail extends AbstractOdetail implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Odetail() {
	}

	public Odetail(Integer odid, Integer ocount, Float omoney, Orders orders,
			Seat seat, Timetable timetable) {
		super(odid, ocount, omoney, orders, seat, timetable);
		// TODO Auto-generated constructor stub
	}
}
