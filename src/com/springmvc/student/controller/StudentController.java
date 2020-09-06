package com.springmvc.student.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.student.model.Student;
import com.springmvc.student.service.StudentService;

@Controller
public class StudentController
{
	@Autowired
	StudentService service;
	
	@RequestMapping("/")
	public ModelAndView home()
	{
		ModelAndView model = new ModelAndView("index");
		List<Student> listStudent = service.listAll();
		model.addObject("listStudent", listStudent);
		return model;
	}
	
	@RequestMapping(value = "/newStudent")
	public String newStudentForm(Map<String, Object> model)
	{
		model.put("student", new Student());
		return "new-student";
	}
	
	@RequestMapping(value = "/save", method =RequestMethod.POST )
	public String saveStudent(@Valid @ModelAttribute("student") Student student,  BindingResult theBindingResult)
	{

		if(theBindingResult.hasErrors())
		{
			return "new-student";
		}
		else
		{
			System.out.println(theBindingResult.hasErrors());
			service.save(student);
			return "redirect:/";
		}
	}
	
	@RequestMapping(value = "/edit")
	public ModelAndView editStudentForm(@RequestParam(name = "id") Long id)
	{
		ModelAndView model = new ModelAndView("edit-student");
		Student theStudent = service.get(id);
		model.addObject("student", theStudent);
		return model;
	}
	
	@RequestMapping(value = "/delete")
	public String deleteStudent(@RequestParam(name = "id") Long id)
	{
		service.delete(id);
		return "redirect:/";
	}
	
	
}
