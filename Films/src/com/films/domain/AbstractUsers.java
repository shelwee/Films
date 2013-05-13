package com.films.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * AbstractUsers entity provides the base persistence definition of the Users
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractUsers implements java.io.Serializable {

	// Fields

	private Integer uid;
	private String uname;
	private String upassword;
	private String urealName;
	private String usex;
	private String uphone;
	private String uemail;
	private String uqq;
	private String ubirth;
	private String urole;
	private String uidcard;
	private String uphoto;
	private Set orderses = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractUsers() {
	}

	/** minimal constructor */
	public AbstractUsers(String upassword, String uemail, String urole) {
		this.upassword = upassword;
		this.uemail = uemail;
		this.urole = urole;
	}

	/** full constructor */
	public AbstractUsers(String uname, String upassword, String urealName,
			String usex, String uphone, String uemail, String uqq, String ubirth,
			String urole, String uidcard, String uphoto, Set orderses) {
		this.uname = uname;
		this.upassword = upassword;
		this.urealName = urealName;
		this.usex = usex;
		this.uphone = uphone;
		this.uemail = uemail;
		this.uqq = uqq;
		this.ubirth = ubirth;
		this.urole = urole;
		this.uidcard = uidcard;
		this.uphoto = uphoto;
		this.orderses = orderses;
	}

	// Property accessors

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpassword() {
		return this.upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public String getUrealName() {
		return this.urealName;
	}

	public void setUrealName(String urealName) {
		this.urealName = urealName;
	}

	public String getUsex() {
		return this.usex;
	}

	public void setUsex(String usex) {
		this.usex = usex;
	}

	public String getUphone() {
		return this.uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public String getUemail() {
		return this.uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUqq() {
		return this.uqq;
	}

	public void setUqq(String uqq) {
		this.uqq = uqq;
	}

	public String getUbirth() {
		return this.ubirth;
	}

	public void setUbirth(String ubirth) {
		this.ubirth = ubirth;
	}

	public String getUrole() {
		return this.urole;
	}

	public void setUrole(String urole) {
		this.urole = urole;
	}

	public String getUidcard() {
		return this.uidcard;
	}

	public void setUidcard(String uidcard) {
		this.uidcard = uidcard;
	}

	public String getUphoto() {
		return this.uphoto;
	}

	public void setUphoto(String uphoto) {
		this.uphoto = uphoto;
	}

	public Set getOrderses() {
		return this.orderses;
	}

	public void setOrderses(Set orderses) {
		this.orderses = orderses;
	}

}