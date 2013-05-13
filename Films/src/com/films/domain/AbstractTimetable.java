package com.films.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * AbstractTimetable entity provides the base persistence definition of the
 * Timetable entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractTimetable implements java.io.Serializable {

	// Fields

	private Integer tid;
	private Film film;
	private Hall hall;
	private String tdate;
	private String ttime;
	private Float tticketPrice;
	private Set odetailes = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractTimetable() {
	}

	/** minimal constructor */
	public AbstractTimetable(String tdate, String ttime, Float tticketPrice) {
		this.tdate = tdate;
		this.ttime = ttime;
		this.tticketPrice = tticketPrice;
	}

	/** full constructor */
	public AbstractTimetable(Film film, Hall hall, String tdate, String ttime,
			Float tticketPrice, Set odetailes) {
		this.film = film;
		this.hall = hall;
		this.tdate = tdate;
		this.ttime = ttime;
		this.tticketPrice = tticketPrice;
		this.odetailes = odetailes;
	}

	// Property accessors

	public Integer getTid() {
		return this.tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public Film getFilm() {
		return this.film;
	}

	public void setFilm(Film film) {
		this.film = film;
	}

	public Hall getHall() {
		return this.hall;
	}

	public void setHall(Hall hall) {
		this.hall = hall;
	}

	public String getTdate() {
		return this.tdate;
	}

	public void setTdate(String tdate) {
		this.tdate = tdate;
	}

	public String getTtime() {
		return this.ttime;
	}

	public void setTtime(String ttime) {
		this.ttime = ttime;
	}

	public Float getTticketPrice() {
		return this.tticketPrice;
	}

	public void setTticketPrice(Float tticketPrice) {
		this.tticketPrice = tticketPrice;
	}

	public Set getOdetailes() {
		return this.odetailes;
	}

	public void setOdetailes(Set odetailes) {
		this.odetailes = odetailes;
	}

}