package com.cetpa;

public class Employee 
{
	private int eid;
	private String firstname;
	private String lastname;
	private String phone;
	private String emailid;
	private String department;
	private String salary;
	
	public Employee() {}

	public Employee(int eid, String firstname, String lastname, String phone, String emailid, String department,
			String salary) {
		this.eid = eid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.phone = phone;
		this.emailid = emailid;
		this.department = department;
		this.salary = salary;
	}

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}
	

}
