package com.films.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractSeat entity provides the base persistence definition of the Seat
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractSeat implements java.io.Serializable {

	// Fields

	private Integer seid;
	private Hall hall;
	private String serow;
	private String senum;
	private Set odetails = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractSeat() {
	}

	/** minimal constructor */
	public AbstractSeat(String serow, String senum) {
		this.serow = serow;
		this.senum = senum;
	}

	/** full constructor */
	public AbstractSeat(Hall hall, String serow, String senum, Set odetails) {
		this.hall = hall;
		this.serow = serow;
		this.senum = senum;
		this.odetails = odetails;
	}

	// Property accessors

	public Integer getSeid() {
		return this.seid;
	}

	public void setSeid(Integer seid) {
		this.seid = seid;
	}

	public Hall getHall() {
		return this.hall;
	}

	public void setHall(Hall hall) {
		this.hall = hall;
	}

	public String getSerow() {
		return this.serow;
	}

	public void setSerow(String serow) {
		this.serow = serow;
	}

	public String getSenum() {
		return this.senum;
	}

	public void setSenum(String senum) {
		this.senum = senum;
	}

	public Set getOdetails() {
		return this.odetails;
	}

	public void setOdetails(Set odetails) {
		this.odetails = odetails;
	}

}