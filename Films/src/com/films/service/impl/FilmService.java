package com.films.service.impl;

import java.util.List;

import com.films.baservice.ABaseService;
import com.films.service.inter.IFilmService;

public class FilmService extends ABaseService implements IFilmService {

	public List getFilm(){
		List list = getResult("from Film", null);
		return list;
	}

	@Override
	public int getPageCount(int pageSize) {
		// TODO Auto-generated method stub
		return this.queryPageCount("select count(*) from Film", null, pageSize);
	}

	@Override
	public List showFilms(int pageSize, int pageNow) {
		// TODO Auto-generated method stub
		return executeQueryByPage("from Film order by fdate desc", null, pageSize ,pageNow);
	}

	@Override
	public List getUpcoming() {
		// TODO Auto-generated method stub
		List list = this.getResult("from Film where datediff(fdate,now())>0 order by fdate asc", null);
		return list;
	}

	@Override
	public List getFilmByKW(String keyword) {
		// TODO Auto-generated method stub
		return getResult("from Film where ffilmName like '%"+keyword+"%' or fintro like '%"+keyword+"%'", null);
	}
}
