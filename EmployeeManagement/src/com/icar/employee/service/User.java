 package com.icar.employee.service;

public class User {
	
	private String num;//员工编号
	private String name;//姓名
	private String cardId;//身份证
	private String sex;//性别
	private String nativePlace;//籍贯
	private String formalSchooling;//学历
	private String university;//毕业院校
	private String telephone;//联系方式
	
	public  User() {
		// TODO Auto-generated constructor stub
	}
	public User(String name,String sex,String nativePlace,String num,String telephone,String cardId, 
			String formalSchooling, String university) {
		this.name = name;
		this.sex = sex;
		this.nativePlace=nativePlace;
		this.num = num;
		this.telephone = telephone;
		this.cardId = cardId;
		this.formalSchooling = formalSchooling;
		this.university = university;
		
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCardId() {
		return cardId;
	}

	public void setCardId(String cardId) {
		this.cardId = cardId;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getNativeplace() {
		return nativePlace;
	}

	public void setNativeplace(String nativePlace) {
		this.nativePlace = nativePlace;
	}

	public String getFormalschooling() {
		return formalSchooling;
	}

	public void setFormalschooling(String formalSchooling) {
		this.formalSchooling = formalSchooling;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
}

