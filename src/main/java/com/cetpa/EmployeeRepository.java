package com.cetpa;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class EmployeeRepository 
{
	static Session ses;
	static Transaction trn;
	static 
	{
		SessionFactory fac=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		ses=fac.openSession();
		trn=ses.getTransaction();
	}
	public static void saveEmployee(Employee emp)
	{
		trn.begin();
		ses.save(emp);
		trn.commit();
	}
	public static void deleteEmployee(Employee emp)
	{
		
		trn.begin();
		ses.delete(emp);
		trn.commit();
	}
	public static void updateEmployee(Employee empnew, Employee empold)
	{
		
		trn.begin();
		empold.setFirstname(empnew.getFirstname());
		empold.setLastname(empnew.getLastname());
		empold.setPhone(empnew.getPhone());
		empold.setEmailid(empnew.getEmailid());
		empold.setDepartment(empnew.getDepartment());
		empold.setSalary(empnew.getSalary());
		trn.commit();
	}
	public static List<Employee> getEmployeeList()
	{
        Query<Employee> query=ses.createQuery("from Employee",Employee.class);
        List<Employee> employeeList=query.list();
        return employeeList;
       
	}
	
	public static Employee getEmployeeEid(int eid)
	{
		Employee employee=ses.get(Employee.class,eid);
		return employee;
	}
	

}
