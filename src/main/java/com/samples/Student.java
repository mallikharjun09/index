package com.samples;

import javax.persistence.*;

@Entity
@Table(name="Student")
public class Student {
  private int id;
  private String name;
  
  @Id
  @GeneratedValue
  @Column(name="ID")
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
@Column(name="NAME")
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
}
