package com.films.service.impl;

import java.util.List;

import com.films.baservice.ABaseService;
import com.films.service.inter.IOrdetailService;

public class OrdetailService extends ABaseService implements IOrdetailService {

	//澶氳〃鏌ヨ锛屽綋鐢ㄦ埛鏄皝锛岃鍗曞彿鏄摢涓紝鍦烘鍏崇郴鑾峰彇璁㈠崟缁嗚妭琛�	
	public List getOrders(int oid){
		List list = getResult("from Odetail where odoid=? ", new Object[]{oid});
		return list;
	}

	@Override
	public List getByOid(int oid) {
		// TODO Auto-generated method stub
		return getResult("from Odetail A where A.orders.oid=?", new Object[]{oid});
	}
	
}
