package com.films.domain;

import java.util.Set;

/**
 * Area entity. @author MyEclipse Persistence Tools
 */
public class Area extends AbstractArea implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Area() {
	}

	/** minimal constructor */
	public Area(String azone) {
		super(azone);
	}

	/** full constructor */
	public Area(String azone, Set films) {
		super(azone, films);
	}

}
