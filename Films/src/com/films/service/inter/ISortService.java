package com.films.service.inter;

import java.util.List;

import com.films.baservice.IBaseService;
import com.films.domain.Sort;

public interface ISortService extends IBaseService {

	public List<Sort> getSort();
}
