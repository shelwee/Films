package com.films.domain;

import java.util.Date;
import java.util.Set;

/**
 * Film entity. @author MyEclipse Persistence Tools
 */
public class Film extends AbstractFilm implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Film() {
	}

	/** minimal constructor */
	public Film(String ffilmName, String fdiretor, String fplay, String fintro,
			String flanguage, Integer flong, String fdate, String ftype) {
		super(ffilmName, fdiretor, fplay, fintro, flanguage, flong, fdate,
				ftype);
	}

	/** full constructor */
	public Film(Integer fid, Sort sort, Area area, String ffilmName,
			String fdiretor, String fplay, String fintro, String flanguage,
			Integer flong, String fdate, String ftype, String fphoto,
			Set timetables, Set filmcomment) {
		super(fid, sort, area, ffilmName, fdiretor, fplay, fintro, flanguage, flong,
				fdate, ftype, fphoto, timetables, filmcomment);
		// TODO Auto-generated constructor stub
	}
}
