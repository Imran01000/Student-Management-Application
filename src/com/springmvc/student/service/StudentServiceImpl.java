package com.springmvc.student.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.student.model.Student;
import com.springmvc.student.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService 
{
	@Autowired
	StudentRepository repo;
	
	@Override
	public List<Student> listAll() 
	{
		return (List<Student>) repo.findAll();
	}

	@Override
	public void save(Student student) 
	{
		repo.save(student);		
	}

	@Override
	public Student get(long id) 
	{
		Optional<Student> data = repo.findById(id);
		return data.get();
	}

}
