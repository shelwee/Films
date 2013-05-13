package com.films.service.impl;

import java.util.List;

import com.films.baservice.ABaseService;
import com.films.domain.Timetable;
import com.films.service.inter.ITimeTableService;

public class TimeTableService extends ABaseService implements ITimeTableService {

	@Override
	public List<Timetable> getTimeTable() {
		// TODO Auto-generated method stub
		List<Timetable> list = getResult("from Timetable", null);
		return list;
	}
	
	public List showTimeTable(int pageSize, int pageNow) {
		// TODO Auto-generated method stub
		return executeQueryByPage("from Timetable order by tdate asc", null, pageSize ,pageNow);
	}
	
	public int getPageCount(int pageSize) {
		// TODO Auto-generated method stub
		return this.queryPageCount("select count(*) from Timetable", null, pageSize);
	}

	@Override
	public List isTimetable(String fid) {
		// TODO Auto-generated method stub
		return this.getResult("from Timetable where tfid=?", new Object[]{fid});
	}

	@Override
	public List findTimetableByFid(String fid,String date) {
		// TODO Auto-generated method stub
		return this.getResult("from Timetable where tfid=? and tdate=?", new Object[]{fid,date});
	}

	/*
	 * @anthor shelwee
	 * get timetable by date
	 */
	@Override
	public List getTimetableToday(String date) {
		// TODO Auto-generated method stub
		return this.getResult("from Timetable where tdate=?", new Object[]{date});
	}
}
