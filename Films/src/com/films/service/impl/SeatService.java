package com.films.service.impl;

import java.util.List;

import com.films.baservice.ABaseService;
import com.films.service.inter.ISeatService;

public class SeatService extends ABaseService implements ISeatService {
	
	public List getPayedSeatByTimetab(int tid){
		
		return this.getResult("select distinct new com.films.domain.Selected(S.serow,S.senum) from Seat as S,Orders as O,Odetail as Od where O.ostate=? and Od.timetable.tid=? and Od.orders.oid=O.oid and Od.seat.seid=S.seid", new Object[]{"payed",tid});
		
	}
}
