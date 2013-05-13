package com.films.domain;

import java.util.Set;

/**
 * Hall entity. @author MyEclipse Persistence Tools
 */
public class Hall extends AbstractHall implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Hall() {
	}

	/** minimal constructor */
	public Hall(String hhall, String hnum) {
		super(hhall, hnum);
	}

	/** full constructor */
	public Hall(String hhall, String hnum, Set timetables, Set seats) {
		super(hhall, hnum, timetables, seats);
	}

}
