package com.films.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractArea entity provides the base persistence definition of the Area
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractArea implements java.io.Serializable {

	// Fields

	private Integer aid;
	private String azone;
	private Set films = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractArea() {
	}

	/** minimal constructor */
	public AbstractArea(String azone) {
		this.azone = azone;
	}

	/** full constructor */
	public AbstractArea(String azone, Set films) {
		this.azone = azone;
		this.films = films;
	}

	// Property accessors

	public Integer getAid() {
		return this.aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public String getAzone() {
		return this.azone;
	}

	public void setAzone(String azone) {
		this.azone = azone;
	}

	public Set getFilms() {
		return this.films;
	}

	public void setFilms(Set films) {
		this.films = films;
	}

}