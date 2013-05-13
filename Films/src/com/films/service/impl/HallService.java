package com.films.service.impl;

import java.util.List;

import com.films.baservice.ABaseService;
import com.films.domain.Hall;
import com.films.service.inter.IHallService;

public class HallService extends ABaseService implements IHallService {

	@Override
	public List<Hall> getHall() {
		// TODO Auto-generated method stub
		List list = getResult("from Hall", null);
		return list;
	}

}
