package com.films.service.impl;

import java.util.List;

import com.films.baservice.ABaseService;
import com.films.domain.Orders;
import com.films.service.inter.IOrderService;

public class OrderService extends ABaseService implements IOrderService {
	
	public Orders getSaveOrderID(Orders order) {
				
		this.save(order);
		List  list = getResult("select max(oid) from Orders", null);
		int oid = (Integer) list.get(0);
		order = (Orders) this.findById(Orders.class, oid);
		return order;
	}

	@Override
	public int getPageCount(int pageSize) {
		// TODO Auto-generated method stub
		return this.queryPageCount("select count(*) from Orders", null, pageSize);
	}

	@Override
	public List getOrders(int pageSize, int pageNow, int uid ) {
		// TODO Auto-generated method stub
		return executeQueryByPage("select distinct new com.films.domain.Ordetail(A.oid,A.odate,A.ostate,B.omoney,C.ffilmName,t.tdate,t.ttime,B.seat.senum,B.seat.serow) from Odetail B, Orders A,Seat S,Film as C inner join C.timetables as t where B.orders.oid=A.oid and B.timetable.tid=t.tid and B.seat.seid=S.seid and A.users.uid=? order by A.odate desc", new String[]{uid+""}, pageSize ,pageNow);
	}

	@Override
	public List getOrdersByPayed(int pageSize, int pageNow, int uid) {
		// TODO Auto-generated method stub
		return executeQueryByPage("select distinct new com.films.domain.Ordetail(A.oid,A.odate,A.ostate,B.omoney,C.ffilmName,t.tdate,t.ttime,B.seat.senum,B.seat.serow) from Odetail B, Orders A,Film as C inner join C.timetables as t where B.orders.oid=A.oid and B.timetable.tid=t.tid and A.ostate='payed' and A.users.uid=? order by A.odate desc", new String[]{uid+""}, pageSize ,pageNow);
	}

	@Override
	public int getNPOrder(int uid) {
		// TODO Auto-generated method stub
		List list = this.getResult("from Orders where ostate=? and ouid=?",new Object[]{"no-pay",uid});
		return list.size();
	}

	@Override
	public List getOrder(int pageSize, int pageNow) {
		// TODO Auto-generated method stub
		return executeQueryByPage("select distinct new com.films.domain.Ordetail(A.oid,A.odate,A.ostate,B.omoney,C.ffilmName,A.users.urealName,t.tid,A.users.uphone,t.tdate,t.ttime) from Odetail B, Orders A,Film as C inner join C.timetables as t where B.orders.oid=A.oid and B.timetable.tid=t.tid order by A.odate desc", null, pageSize ,pageNow);
	}
}