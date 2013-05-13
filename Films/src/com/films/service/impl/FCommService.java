package com.films.service.impl;

import java.util.List;

import com.films.baservice.ABaseService;
import com.films.service.inter.IFCommService;

public class FCommService extends ABaseService implements IFCommService {

	@Override
	public List getFilmComments(int fid) {
		// TODO Auto-generated method stub
		return getResult("from Filmcomment where film.fid=? order by ctime desc", new Object[]{fid});
	}

	@Override
	public List getAllCom() {
		// TODO Auto-generated method stub
		return getResult("from Filmcomment", null);
	}

	@Override
	public int getPageCount(int pageSize) {
		// TODO Auto-generated method stub
		return this.queryPageCount("select count(*) from Filmcomment", null, pageSize);
	}

	@Override
	public List getComments(int pageSize, int pageNow, int uid) {
		// TODO Auto-generated method stub
		return executeQueryByPage("from Filmcomment where users.uid=? order by ctime desc", new String[]{uid+""},pageSize,pageNow);
	}
}
