package com.films.service.impl;

import java.util.List;

import com.films.baservice.ABaseService;
import com.films.domain.Area;
import com.films.service.inter.IAreaService;

public class AreaService extends ABaseService implements IAreaService {

	public List<Area> getAreas(){
		List<Area> areas = getResult("from Area", null);
		return areas;
	}
}