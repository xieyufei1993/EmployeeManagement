package com.icar.db;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

/**
 * 读取数据库配置。
 * 
 * @author Administrator
 * 
 */
public class DbConfig {

	private String user;
	private String password;
	private String url;

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * 读取配置文件。
	 */
	public void load(InputStream in) {
		try {	
			BufferedReader reader = new BufferedReader(
					new InputStreamReader(in,"utf-8"));
			String line = null;
			while ((line = reader.readLine()) != null) {
				parseLine(line);
			}
		} catch (Exception e) {
			System.out.println("文件读取失败");
		}

	}

	/**
	 * 解析数据库连接中的每一个元素。
	 * 
	 * @param line
	 */
	private void parseLine(String line) {
		
		if (line.startsWith("user")) {
			setUser(line.substring(line.indexOf(" ") + 1));
		} else if (line.startsWith("password")) {
			setPassword(line.substring(line.indexOf(" ") + 1));
		} else {
			setUrl(line.substring(line.indexOf(" ") + 1));
		}
	}

}
