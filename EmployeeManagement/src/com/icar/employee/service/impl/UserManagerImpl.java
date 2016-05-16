package com.icar.employee.service.impl;

import java.util.List;

import com.icar.employee.dao.UserDao;
import com.icar.employee.dao.impl.UserDaoImpl;
import com.icar.employee.service.IUserManager;
import com.icar.employee.service.User;

/**
 * 用户管理接口实现类。
 * @author Administrator
 *
 */
public class UserManagerImpl implements IUserManager {
	private UserDao dao = null;
	
	public UserManagerImpl(String userType){
		dao = new UserDaoImpl(userType);
	}
	
	public void addUser(User user) {
		dao.save(user);
	}

	public void removeUser(String name) {
		dao.delete(name);
	}

	public void removeUser(User user) {
		dao.delete(user);

	}

	public void updateUserInfo(User user) {
		dao.update(user);
	}

	public List<User> findUserByUserName(String name,String nativePlace,String formalSchooling) {
		return dao.find(name,nativePlace,formalSchooling);
	}

	public User findUser(User user) {
		return dao.find(user);
	}

    public List<User> findAllUsers() {
		
		return dao.findAll();
	}

}
