package com.films.service.inter;

import java.util.List;

import com.films.baservice.IBaseService;
import com.films.domain.Orders;

public interface IOrderService extends IBaseService {

	public Orders getSaveOrderID(Orders order) ;

	public int getPageCount(int pageSize);
	
	public List getOrders(int pageSize, int pageNow, int uid);
	
	public List getOrdersByPayed(int pageSize, int pageNow, int uid);
	
	public int getNPOrder(int uid);
	
	public List getOrder(int pageSize, int pageNow);

}
