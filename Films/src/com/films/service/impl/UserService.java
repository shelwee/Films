package com.films.service.impl;

import java.util.List;

import com.films.baservice.ABaseService;
import com.films.domain.Users;

import com.films.service.inter.IUserService;

public class UserService extends ABaseService implements IUserService {

	@Override
	public boolean checkEmail(String email) {
		// TODO Auto-generated method stub
		List list = getResult("from Users where uemail=?", new Object[]{email});
		if(list.size()==1){
			return true;
		}
		return false;
	}

	@Override
	public Users checkUser(Users user) {
		// TODO Auto-generated method stub
		List list = getResult("from Users where uemail=? and upassword=?", new Object[]{user.getUemail(),user.getUpassword()});
		if(list.size()==1){
			return (Users) list.get(0);
		}else{
			return null;
		}
	}

	@Override
	public int getPageCount(int pageSize) {
		// TODO Auto-generated method stub
		return this.queryPageCount("select count(*) from Users", null, pageSize);
	}

	@Override
	public List showUser(int pageSize, int pageNow) {
		// TODO Auto-generated method stub
		return executeQueryByPage("from Users where urole='user'", null, pageSize ,pageNow);
	}
	
}
