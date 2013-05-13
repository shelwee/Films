package com.films.service.inter;

import java.util.List;

import com.films.baservice.IBaseService;

public interface IFilmService extends IBaseService {

	public List getFilm();
	
	public int getPageCount(int pageSize);
	
	public List showFilms(int pageSize, int pageNow);
	
	public List getUpcoming();
	
	//get search result
	public List getFilmByKW(String keyword);
}
