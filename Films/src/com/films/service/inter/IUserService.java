package com.films.service.inter;

import java.util.List;

import com.films.baservice.IBaseService;
import com.films.domain.Users;

public interface IUserService extends IBaseService {

	//注册验证邮箱
	public boolean checkEmail(String email);
	
	//登陆验证用户
	public Users checkUser(Users user);
	
	public int getPageCount(int pageSize);
	
	public List showUser(int pageSize, int pageNow);
}
