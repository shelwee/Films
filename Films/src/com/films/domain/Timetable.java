package com.films.domain;

import java.util.Date;
import java.util.Set;

/**
 * Timetable entity. @author MyEclipse Persistence Tools
 */
public class Timetable extends AbstractTimetable implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Timetable() {
	}

	/** minimal constructor */
	public Timetable(String tdate, String ttime, Float tticketPrice) {
		super(tdate, ttime, tticketPrice);
	}

	/** full constructor */
	public Timetable(Film film, Hall hall, String tdate, String ttime,
			Float tticketPrice, Set orderses) {
		super(film, hall, tdate, ttime, tticketPrice, orderses);
	}

}
