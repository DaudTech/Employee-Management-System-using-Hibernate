package com.cetpa;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class EmployeeRepository {

    private static SessionFactory factory;

    static {
        try {
            factory = new Configuration()
                        .configure("hibernate.cfg.xml")
                        .buildSessionFactory();
        } catch (Exception e) {
            e.printStackTrace();
            throw new ExceptionInInitializerError("SessionFactory initialization failed");
        }
    }

    private static Session getSession() {
        return factory.openSession();
    }

    public static void saveEmployee(Employee emp) {
        try (Session session = getSession()) {
            Transaction tx = session.beginTransaction();
            session.save(emp);
            tx.commit();
        }
    }

    public static void deleteEmployee(Employee emp) {
        try (Session session = getSession()) {
            Transaction tx = session.beginTransaction();
            session.delete(emp);
            tx.commit();
        }
    }

    public static void updateEmployee(Employee empnew, Employee empold) {
        try (Session session = getSession()) {
            Transaction tx = session.beginTransaction();
            Employee employee = session.get(Employee.class, empold.getEid());
            if (employee != null) {
                employee.setFirstname(empnew.getFirstname());
                employee.setLastname(empnew.getLastname());
                employee.setPhone(empnew.getPhone());
                employee.setEmailid(empnew.getEmailid());
                employee.setDepartment(empnew.getDepartment());
                employee.setSalary(empnew.getSalary());
                session.update(employee);
            }
            tx.commit();
        }
    }

    public static List<Employee> getEmployeeList() {
        try (Session session = getSession()) {
            Query<Employee> query = session.createQuery("from Employee", Employee.class);
            return query.list();
        }
    }

    public static Employee getEmployeeEid(int eid) {
        try (Session session = getSession()) {
            return session.get(Employee.class, eid);
        }
    }
}
