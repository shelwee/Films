package com.films.domain;

import java.sql.Timestamp;

/**
 * AbstractFilmcomment entity provides the base persistence definition of the
 * Filmcomment entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractFilmcomment implements java.io.Serializable {

	// Fields

	private Integer id;
	private Film film;
	private Users users;
	private Timestamp ctime;
	private String comments;

	// Constructors

	/** default constructor */
	public AbstractFilmcomment() {
	}

	/** minimal constructor */
	public AbstractFilmcomment(Film film, Users users, String comments) {
		this.film = film;
		this.users = users;
		this.comments = comments;
	}

	/** full constructor */
	public AbstractFilmcomment(Film film, Users users, Timestamp ctime,
			String comments) {
		this.film = film;
		this.users = users;
		this.ctime = ctime;
		this.comments = comments;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Film getFilm() {
		return this.film;
	}

	public void setFilm(Film film) {
		this.film = film;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Timestamp getCtime() {
		return this.ctime;
	}

	public void setCtime(Timestamp ctime) {
		this.ctime = ctime;
	}

	public String getComments() {
		return this.comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

}