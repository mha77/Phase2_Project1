package com.simplilearn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="subject_table")
public class Subject {
	
		@Id
		@GeneratedValue
		private int subject_id;
		
		@Column(name="subject_name")
		private String name;

		public int getSubject_id() {
			return subject_id;
		}

		public void setSubject_id(int subject_id) {
			this.subject_id = subject_id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}
		
		

}
