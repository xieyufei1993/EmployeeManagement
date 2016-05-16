package com.icar.employee.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.icar.employee.dao.UserDao;
import com.icar.employee.service.User;
import com.icar.db.DbUtil;

/**
 * 数据操作的实现。
 * 
 * @author Administrator
 * 
 */
public class UserDaoImpl implements UserDao {

	private PreparedStatement pst = null;
	private ResultSet rs = null;
	private String tableName = null;

	public UserDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	public UserDaoImpl(String userType) {
		setTableName(userType);
	}

	private void setTableName(String userType) {
		if (userType.equalsIgnoreCase("admin")) {
			this.tableName = "ADMIN";
		} else {
			this.tableName = "EmployeeInformation";
		}
	}

	public void save(User user) {
		String sql = "INSERT INTO  " + this.tableName
				+ " VALUES (?,?,?,?,?,?,?,?)";
		pst = DbUtil.getInstance().prepareStatement(sql);

		try {
			pst.setString(1, user.getName());
			pst.setString(2, user.getSex());
			pst.setString(3, user.getNativeplace());
			pst.setString(4, user.getNum());
			pst.setString(5, user.getTelephone());
			pst.setString(6, user.getCardId());
			pst.setString(7, user.getFormalschooling());
			pst.setString(8, user.getUniversity());

			pst.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			DbUtil.getInstance().close();
		}

	}

	public void delete(String name) {
		String sql = "DELETE FROM EMPLOYEEINFORMATION WHERE NAME=?";
		pst = DbUtil.getInstance().prepareStatement(sql);

		try {
			pst.setString(1, name);
			pst.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbUtil.getInstance().close();
		}

	}

	// 自己实现
	public void delete(User user) {
		// TODO Auto-generated method stub

	}

	public void update(User user) {
		// TODO Auto-generated method stub
		String sql = "UPDATE EMPLOYEEINFORMATION SET SEX=?," +
				"NATIVEPLACE=?,NUM=?,TELEPHONE=?,CARDID=?,FORMALSCHOOLING=?," +
				"UNIVERSITY=? WHERE NAME='"+user.getName()+"'";
		pst = DbUtil.getInstance().prepareStatement(sql);
		try {
		
			pst.setString(1, user.getSex());
			pst.setString(2, user.getNativeplace());
			pst.setString(3, user.getNum());
			pst.setString(4, user.getTelephone());
			pst.setString(5, user.getCardId());
			pst.setString(6, user.getFormalschooling());
			pst.setString(7, user.getUniversity());
			int k=pst.executeUpdate();
			
			System.out.println(k);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbUtil.getInstance().close();
		}
	}


	public List<User> find(String name,String nativePlace,String formalSchooling) {
		List<User> list = new ArrayList<User>();
		String sql = "SELECT * FROM  EMPLOYEEINFORMATION  WHERE NAME=? and nativePlace=? and formalSchooling=?";
		pst = DbUtil.getInstance().prepareStatement(sql);
		try {
			pst.setString(1, name);
			pst.setString(2,nativePlace);
			pst.setString(3,formalSchooling);
			rs = pst.executeQuery();
			while (rs.next()) {
				User user = null;
				String sname = rs.getString("name");
				String sex = rs.getString("sex");
				String snativePlace = rs.getString("nativePlace");
				String num = rs.getString("num");
				String telephone = rs.getString("telephone");
				String cardId = rs.getString("cardId");
				String sformalSchooling = rs.getString("formalSchooling");
				String university = rs.getString("university");
				
				user = new User(sname, sex,snativePlace, num, telephone,
						cardId,sformalSchooling,university);
				list.add(user);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbUtil.getInstance().close();
		}
		return list;
	}

	public User find(User user) {

		String sql = "SELECT * FROM " + this.tableName + " WHERE NUM=?";
		pst = DbUtil.getInstance().prepareStatement(sql);
		try {

			pst.setString(1, user.getNum());
			rs = pst.executeQuery();

			while (rs.next()) {

				if (tableName.equalsIgnoreCase("admin")) {

				} else {
					String num = rs.getString("num");
					if (num == null) {
						user = null;
						break;
					}
					String name = rs.getString("name");
					String cardId = rs.getString("cardId");
					String sex = rs.getString("sex");
					String nativepalce = rs.getString("nativepalce");
					String formalschooling = rs.getString("formalschooling");
					String university = rs.getString("formalschooling");
					String telephone = rs.getString("telephone");
					user = new User(num, name, cardId, sex, nativepalce,
							formalschooling, university, telephone);

				}

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbUtil.getInstance();

		}
		return user;
	}

	public List<User> findAll() {
		
		List<User> list = new ArrayList<User>();
		String sql="select * from employeeinformation";
		pst=DbUtil.getInstance().prepareStatement(sql);
		try{
			rs=pst.executeQuery();
			while(rs.next()){
				User user=new User();
				
				user.setCardId(rs.getString("cardId"));
				user.setFormalschooling(rs.getString("formalSchooling"));
				user.setName(rs.getString("name"));
				user.setNativeplace(rs.getString("nativePlace"));
				user.setNum(rs.getString("num"));
				user.setSex(rs.getString("sex"));
				user.setTelephone(rs.getString("telephone"));
				user.setUniversity(rs.getString("university"));
				
				list.add(user);
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			DbUtil.getInstance().close();
		}
		
		return list;
	
	}
	public List<User> find2(String name) {
		List<User> list = new ArrayList<User>();
		String sql = "SELECT * FROM  EMPLOYEEINFORMATION  WHERE NAME=?";
		pst = DbUtil.getInstance().prepareStatement(sql);
		try {
			pst.setString(1, name);
			rs = pst.executeQuery();
			while (rs.next()) {
				User user = null;
				String sname = rs.getString("name");
				String sex = rs.getString("sex");
				String nativePlace = rs.getString("nativePlace");
				String num = rs.getString("num");
				String telephone = rs.getString("telephone");
				String cardId = rs.getString("cardId");
				String formalSchooling = rs.getString("formalSchooling");
				String university = rs.getString("university");
				
				user = new User(sname, sex,nativePlace, num, telephone,
						cardId,formalSchooling,university);
				list.add(user);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbUtil.getInstance().close();
		}
		return list;
	}
	public List<User> find3(String formalSchooling) {
		List<User> list = new ArrayList<User>();
		String sql = "SELECT * FROM  EMPLOYEEINFORMATION  WHERE formalSchooling=?";
		pst = DbUtil.getInstance().prepareStatement(sql);
		try {
			pst.setString(1, formalSchooling);
			rs = pst.executeQuery();
			while (rs.next()) {
				User user = null;
				String name = rs.getString("name");
				String sex = rs.getString("sex");
				String nativePlace = rs.getString("nativePlace");
				String num = rs.getString("num");
				String telephone = rs.getString("telephone");
				String cardId = rs.getString("cardId");
				String sformalSchooling = rs.getString("formalSchooling");
				String university = rs.getString("university");
				
				user = new User(name, sex,nativePlace, num, telephone,
						cardId,sformalSchooling,university);
				list.add(user);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbUtil.getInstance().close();
		}
		return list;
	}

	
}