package com.films.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractSort entity provides the base persistence definition of the Sort
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractSort implements java.io.Serializable {

	// Fields

	private Integer sid;
	private String ssort;
	private Set films = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractSort() {
	}

	/** minimal constructor */
	public AbstractSort(String ssort) {
		this.ssort = ssort;
	}

	/** full constructor */
	public AbstractSort(String ssort, Set films) {
		this.ssort = ssort;
		this.films = films;
	}

	// Property accessors

	public Integer getSid() {
		return this.sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public String getSsort() {
		return this.ssort;
	}

	public void setSsort(String ssort) {
		this.ssort = ssort;
	}

	public Set getFilms() {
		return this.films;
	}

	public void setFilms(Set films) {
		this.films = films;
	}

}