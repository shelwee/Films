package com.films.domain;

import java.sql.Timestamp;

/**
 * Filmcomment entity. @author MyEclipse Persistence Tools
 */
public class Filmcomment extends AbstractFilmcomment implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Filmcomment() {
	}

	/** minimal constructor */
	public Filmcomment(Film film, Users users, String comments) {
		super(film, users, comments);
	}

	/** full constructor */
	public Filmcomment(Film film, Users users, Timestamp ctime, String comments) {
		super(film, users, ctime, comments);
	}

}
