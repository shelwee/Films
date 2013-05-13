package com.films.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractHall entity provides the base persistence definition of the Hall
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractHall implements java.io.Serializable {

	// Fields

	private Integer hid;
	private String hhall;
	private String hnum;
	private Set timetables = new HashSet(0);
	private Set seats = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractHall() {
	}

	/** minimal constructor */
	public AbstractHall(String hhall, String hnum) {
		this.hhall = hhall;
		this.hnum = hnum;
	}

	/** full constructor */
	public AbstractHall(String hhall, String hnum, Set timetables, Set seats) {
		this.hhall = hhall;
		this.hnum = hnum;
		this.timetables = timetables;
		this.seats = seats;
	}

	// Property accessors

	public Integer getHid() {
		return this.hid;
	}

	public void setHid(Integer hid) {
		this.hid = hid;
	}

	public String getHhall() {
		return this.hhall;
	}

	public void setHhall(String hhall) {
		this.hhall = hhall;
	}

	public String getHnum() {
		return this.hnum;
	}

	public void setHnum(String hnum) {
		this.hnum = hnum;
	}

	public Set getTimetables() {
		return this.timetables;
	}

	public void setTimetables(Set timetables) {
		this.timetables = timetables;
	}

	public Set getSeats() {
		return this.seats;
	}

	public void setSeats(Set seats) {
		this.seats = seats;
	}

}