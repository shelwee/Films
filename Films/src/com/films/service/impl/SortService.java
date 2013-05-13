package com.films.service.impl;

import java.util.List;

import com.films.baservice.ABaseService;
import com.films.domain.Sort;
import com.films.service.inter.ISortService;

public class SortService extends ABaseService implements ISortService {

	@Override
	public List<Sort> getSort() {
		// TODO Auto-generated method stub
		List<Sort> sorts = getResult("from Sort", null);
		return sorts;
	}

}
