package com.dao;

import com.po.User;
//用户业务逻辑
public class UserDao {
	public Boolean userLogin(User u) {
		if(u.getUsername().equals("admin") && u.getPassword().equals("admin")) {
			return true;
		}else {
			return false;
		}
	}
}
