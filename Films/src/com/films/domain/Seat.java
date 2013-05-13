package com.films.domain;

import java.util.Set;

/**
 * Seat entity. @author MyEclipse Persistence Tools
 */
public class Seat extends AbstractSeat implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Seat() {
	}

	/** minimal constructor */
	public Seat(String serow, String senum) {
		super(serow, senum);
	}

	/** full constructor */
	public Seat(Hall hall, String serow, String senum, Set odetails) {
		super(hall, serow, senum, odetails);
	}

}
