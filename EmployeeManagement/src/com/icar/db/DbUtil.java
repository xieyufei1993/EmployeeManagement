package com.icar.db;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 数据库封装类。
 * @author Administrator
 *
 */
public class DbUtil {

	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	private PreparedStatement pst = null;
	private static DbUtil instance = null;
	private DbConfig config = null;
	
	private DbUtil(){	
		
	}
	/**
	 * 单例模式
	 * @return
	 */
	public static DbUtil getInstance(){
		if(instance == null){
			instance = new DbUtil();
		}
		return instance;
	}
	
	public void config(InputStream in){
		config = new DbConfig();
		config.load(in);
	}
	
	/**
	 * 注册驱动。
	 */
	private void registDriver() throws SQLException {
		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	}

	/**
	 * 连接数据库
	 */
	private void connect() throws SQLException {
		registDriver();
		this.conn = DriverManager.getConnection(
				config.getUrl(), config.getUser(), config.getPassword());
		System.out.println("数据库连接成功");
	}
	
	/**
	 * 创建Statment对象
	 */
	public Statement statment() {
		try {
			connect();
			this.stmt = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return this.stmt;
	}

	/**
	 * 创建PrepareStatment对象
	 */
	public PreparedStatement prepareStatement(String sql) {
		try {
			connect();
			this.pst = conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return this.pst;
	}
	
	
	
	/**
	 * 关闭数据库
	 */
	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (stmt != null) {
				stmt.close();
			}
			if (pst != null) {
				pst.close();
			}
			if (conn != null) {
				conn.close();
			}
			System.out.println("数据库关闭成功");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
