package com.films.service.inter;

import java.util.List;

import com.films.baservice.IBaseService;

public interface IFCommService extends IBaseService {
	
	public List getAllCom();
	
	public List getFilmComments(int fid);
	
	public int getPageCount(int pageSize);
	
	public List getComments(int pageSize, int pageNow, int uid);
}
