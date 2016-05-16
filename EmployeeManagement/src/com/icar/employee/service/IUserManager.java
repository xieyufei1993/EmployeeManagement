package com.icar.employee.service;

import java.util.List;


/**
 * 用户管理接口。
 * @author Administrator
 *
 */
public interface IUserManager {
	public void addUser(User user);
	public void removeUser(String name);
	public void removeUser(User user);
	public void updateUserInfo(User user);
	public List<User> findUserByUserName(String name,String nativePlace,String formalSchooling);
	public User findUser(User user);
	public List<User> findAllUsers();
}
