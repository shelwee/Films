package com.films.service.inter;

import java.util.List;

import com.films.baservice.IBaseService;

public interface IOrdetailService extends IBaseService {

	public List getOrders(int oid);
	
	public List getByOid(int oid);
	
}
