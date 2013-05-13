package com.films.domain;

import java.util.Date;
import java.util.Set;

/**
 * Orders entity. @author MyEclipse Persistence Tools
 */
public class Orders extends AbstractOrders implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Orders() {
	}

	public Orders(Integer oid, Users users, Date odate, String ostate,
			Set odetails) {
		super(oid, users, odate, ostate, odetails);
		// TODO Auto-generated constructor stub
	}
	

}
