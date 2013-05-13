package com.films.service.inter;

import java.util.List;

import com.films.baservice.IBaseService;
import com.films.domain.Area;

public interface IAreaService extends IBaseService {

	public List<Area> getAreas();
}
