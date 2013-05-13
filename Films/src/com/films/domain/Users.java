package com.films.domain;

import java.util.Date;
import java.util.Set;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */
public class Users extends AbstractUsers implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** minimal constructor */
	public Users(String upassword, String uemail, String urole) {
		super(upassword, uemail, urole);
	}

	/** full constructor */
	public Users(String uname, String upassword, String urealName, String usex,
			String uphone, String uemail, String uqq, String ubirth,
			String urole, String uidcard, String uphoto, Set orderses) {
		super(uname, upassword, urealName, usex, uphone, uemail, uqq, ubirth,
				urole, uidcard, uphoto, orderses);
	}

}
