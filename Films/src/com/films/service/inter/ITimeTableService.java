package com.films.service.inter;

import java.util.List;

import com.films.baservice.IBaseService;

public interface ITimeTableService extends IBaseService {

	public List getTimeTable();
	
	public int getPageCount(int pageSize);
	
	public List showTimeTable(int pageSize, int pageNow);
	
	public List isTimetable(String fid);
	
	public List findTimetableByFid(String fid,String date);
	
	public List getTimetableToday(String date);
}
