package com.films.domain;

import java.util.Set;

/**
 * Sort entity. @author MyEclipse Persistence Tools
 */
public class Sort extends AbstractSort implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Sort() {
	}

	/** minimal constructor */
	public Sort(String ssort) {
		super(ssort);
	}

	/** full constructor */
	public Sort(String ssort, Set films) {
		super(ssort, films);
	}

}
