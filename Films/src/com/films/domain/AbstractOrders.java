package com.films.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * AbstractOrders entity provides the base persistence definition of the Orders
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractOrders implements java.io.Serializable {

	// Fields

	private Integer oid;
	private Users users;
	private Date odate;
	private String ostate;
	private Set odetails = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractOrders() {
	}


	public AbstractOrders(Integer oid, Users users, Date odate, String ostate,
			Set odetails) {
		super();
		this.oid = oid;
		this.users = users;
		this.odate = odate;
		this.ostate = ostate;
		this.odetails = odetails;
	}


	// Property accessors

	public Integer getOid() {
		return this.oid;
	}

	public void setOid(Integer oid) {
		this.oid = oid;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getOstate() {
		return this.ostate;
	}

	public void setOstate(String ostate) {
		this.ostate = ostate;
	}

	public Set getOdetails() {
		return this.odetails;
	}

	public void setOdetails(Set odetails) {
		this.odetails = odetails;
	}


	public Date getOdate() {
		return odate;
	}


	public void setOdate(Date odate) {
		this.odate = odate;
	}

}