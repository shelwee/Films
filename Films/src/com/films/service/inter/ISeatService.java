package com.films.service.inter;

import java.util.List;

import com.films.baservice.IBaseService;

public interface ISeatService extends IBaseService {

	public List getPayedSeatByTimetab(int tid);
}
