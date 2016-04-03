package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.EmployeeDAO;
import com.softech.batch107.model.Employee;

@Controller

public class EmployeeController {
	@Autowired
	EmployeeDAO employeeDAO;
	ModelAndView mv = new ModelAndView();
	public List<Employee> listEmp;
	
	//findAll Employee  1
	@RequestMapping(value = "/employee", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listEmp = employeeDAO.findAll();
			mv.addObject("listEmp", listEmp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	//Remove Employee
	@RequestMapping(value = "/employee/remove", method = RequestMethod.POST)
	public ModelAndView removeEmployee(@RequestParam("emp") int employeeID){
		Employee emp = employeeDAO.getOne(employeeID);
		employeeDAO.delete(emp);
		mv = showAll();
		return mv;
	}
}
