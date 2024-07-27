package com.entity;

public class Admins {
	private int id;
	private String name;
	private String email;
	private String address;
	private String contact;
	private String password;
	private String date_reg;

	public Admins() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admins(int id, String name, String email, String address, String contact, String password, String date_reg) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.address = address;
		this.contact = contact;
		this.password = password;
		this.date_reg = date_reg;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDate_reg() {
		return date_reg;
	}

	public void setDate_reg(String date_reg) {
		this.date_reg = date_reg;
	}

}
