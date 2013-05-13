package com.films.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * AbstractFilm entity provides the base persistence definition of the Film
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractFilm implements java.io.Serializable {

	// Fields

	private Integer fid;
	private Sort sort;
	private Area area;
	private String ffilmName;
	private String fdiretor;
	private String fplay;
	private String fintro;
	private String flanguage;
	private Integer flong;
	private String fdate;
	private String ftype;
	private String fphoto;
	private Set timetables = new HashSet(0);
	private Set filmcomment = new HashSet(0);
	// Constructors

	public Set getFilmcomment() {
		return filmcomment;
	}

	public void setFilmcomment(Set filmcomment) {
		this.filmcomment = filmcomment;
	}

	/** default constructor */
	public AbstractFilm() {
	}

	/** minimal constructor */
	public AbstractFilm(String ffilmName, String fdiretor, String fplay,
			String fintro, String flanguage, Integer flong, String fdate,
			String ftype) {
		this.ffilmName = ffilmName;
		this.fdiretor = fdiretor;
		this.fplay = fplay;
		this.fintro = fintro;
		this.flanguage = flanguage;
		this.flong = flong;
		this.fdate = fdate;
		this.ftype = ftype;
	}

	/** full constructor */
	public AbstractFilm(Integer fid, Sort sort, Area area, String ffilmName,
			String fdiretor, String fplay, String fintro, String flanguage,
			Integer flong, String fdate, String ftype, String fphoto,
			Set timetables, Set filmcomment) {
		super();
		this.fid = fid;
		this.sort = sort;
		this.area = area;
		this.ffilmName = ffilmName;
		this.fdiretor = fdiretor;
		this.fplay = fplay;
		this.fintro = fintro;
		this.flanguage = flanguage;
		this.flong = flong;
		this.fdate = fdate;
		this.ftype = ftype;
		this.fphoto = fphoto;
		this.timetables = timetables;
		this.filmcomment = filmcomment;
	}

	public Integer getFid() {
		return this.fid;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
	}

	public Sort getSort() {
		return this.sort;
	}

	public void setSort(Sort sort) {
		this.sort = sort;
	}

	public Area getArea() {
		return this.area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

	public String getFfilmName() {
		return this.ffilmName;
	}

	public void setFfilmName(String ffilmName) {
		this.ffilmName = ffilmName;
	}

	public String getFdiretor() {
		return this.fdiretor;
	}

	public void setFdiretor(String fdiretor) {
		this.fdiretor = fdiretor;
	}

	public String getFplay() {
		return this.fplay;
	}

	public void setFplay(String fplay) {
		this.fplay = fplay;
	}

	public String getFintro() {
		return this.fintro;
	}

	public void setFintro(String fintro) {
		this.fintro = fintro;
	}

	public String getFlanguage() {
		return this.flanguage;
	}

	public void setFlanguage(String flanguage) {
		this.flanguage = flanguage;
	}

	public Integer getFlong() {
		return this.flong;
	}

	public void setFlong(Integer flong) {
		this.flong = flong;
	}

	public String getFdate() {
		return this.fdate;
	}

	public void setFdate(String fdate) {
		this.fdate = fdate;
	}

	public String getFtype() {
		return this.ftype;
	}

	public void setFtype(String ftype) {
		this.ftype = ftype;
	}

	public String getFphoto() {
		return this.fphoto;
	}

	public void setFphoto(String fphoto) {
		this.fphoto = fphoto;
	}

	public Set getTimetables() {
		return this.timetables;
	}

	public void setTimetables(Set timetables) {
		this.timetables = timetables;
	}

}