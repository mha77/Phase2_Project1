package com.simplilearn.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.simplilearn.entity.Classes;
import com.simplilearn.entity.Student;
import com.simplilearn.entity.Subject;
import com.simplilearn.entity.Teacher;

public class HibernateUtil {

	public static SessionFactory buildSessionFactory() {

		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml")
				.addAnnotatedClass(Teacher.class)
				.addAnnotatedClass(Subject.class)
				.addAnnotatedClass(Classes.class)
				.addAnnotatedClass(Student.class)
				.buildSessionFactory();
				
		return sessionFactory;
	}
}