package com.springmvc.student.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springmvc.student.model.Student;


@Service
public interface StudentService 
{
	public List<Student> listAll();
	
	public void save(Student student);
	
	public Student get(long id);
}
