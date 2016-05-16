package com.icar.employee.dao;

import java.util.List;

import com.icar.employee.service.User;

/**
 * 用户数据访问接口。
 * 
 * @author Administrator
 * 
 */
public interface UserDao {
	
	public void save(User user);
	public void delete(String name);
	public void delete(User user);
	public void update(User user);
	public List<User> find(String name,String nativePlace,String formalSchooling);
	public List<User> find2(String name);
	public User find(User user);
	public List<User> findAll();
}
