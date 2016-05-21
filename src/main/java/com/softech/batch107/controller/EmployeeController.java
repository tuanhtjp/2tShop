package com.softech.batch107.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.EmployeeDAO;
import com.softech.batch107.dao.RoleDAO;
import com.softech.batch107.model.Employee;
import com.softech.batch107.model.Role;

@Controller

public class EmployeeController {
	@Autowired
	EmployeeDAO employeeDAO;
	@Autowired
	RoleDAO roleDAO;
	ModelAndView mv = new ModelAndView();
	public List<Employee> listEmp;
	public List<Role> listRole;

	// GET ALL
	@RequestMapping(value = "/employee", method = RequestMethod.GET)
	public ModelAndView showAll() {
		try {
			listEmp = employeeDAO.findAll();
			mv.addObject("listEmp", listEmp);
			mv.addObject("page", "employee.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("index");
		return mv;
	}

	// SEARCH
	@RequestMapping(value = "/employee", method = RequestMethod.POST)
	public ModelAndView searchEmail(@RequestParam String txtSearch) {
		if (txtSearch.equals("")) {
			showAll();
		} else {
			mv.clear();
			search(txtSearch);

		}

		mv.addObject("page", "employee.jsp");
		mv.setViewName("index");

		return mv;
	}

	// REMOVE
	@RequestMapping(value = "/employee/remove", method = RequestMethod.POST)
	public ModelAndView removeEmployee(@RequestParam("emp") int employeeID) {
		Employee emp = employeeDAO.getOne(employeeID);
		employeeDAO.delete(emp);
		mv.setViewName("redirect:/employee");

		return mv;
	}

	// SHOW EDIT PAGE
	@RequestMapping(value = "/emp-edit/{emp}", method = RequestMethod.GET)
	public ModelAndView redirectToEmployeeEdit(Model model, @PathVariable("emp") int employeeId) {
		try {
			Employee employee = employeeDAO.findOne(employeeId);
			listRole = roleDAO.findAll();
			mv.addObject("employee", employee);
			mv.addObject("listRole", listRole);
			mv.addObject("page", "employee-edit.jsp");
			mv.setViewName("index");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mv;
	}
	
	// EDIT
		@RequestMapping(value = "/emp-edit/{employeeId}", method = RequestMethod.POST)
		public ModelAndView editEmloyee(Model model, @PathVariable("employeeId") int employeeId,
				@ModelAttribute("employee") Employee employee) {
			try {
				employeeDAO.save(employee);
				model.addAttribute("employee", employee);
				showAll();
			} catch (Exception e) {
				e.printStackTrace();
			}
			mv.setViewName("redirect:/employee");
			return mv;
		}


	// SHOW CREATE PAGE
	@RequestMapping(value = "/emp-create", method = RequestMethod.GET)
	public ModelAndView redirectToCustomerCreate() {
		try {
			mv.addObject("page", "employee-create.jsp");
			listRole = roleDAO.findAll();
			mv.addObject("listRole", listRole);
			mv.setViewName("index");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	// CREATE
	@RequestMapping(value = "/emp-create/new", method = RequestMethod.POST)
	public ModelAndView createEmployee(@RequestParam String fullName, @RequestParam String email,
			@RequestParam String password, @RequestParam Date dob, @RequestParam Byte sex,
			@RequestParam String phone, @RequestParam String address, @RequestParam String image,
			@RequestParam String roleID, @RequestParam String status, HttpSession session, Model model) {
		Employee employee = employeeDAO.findByEmail(email);
		if (employee == null) {
			Role role = new Role();
			role.setRoleID(Integer.parseInt(roleID));
			employee = new Employee();
			employee.setFullName(fullName);
			employee.setEmail(email);
			employee.setPassword(password);
			employee.setDob(dob);
			employee.setSex(sex);
			employee.setPhone(phone);
			employee.setAddress(address);
			employee.setImage(image);
			employee.setRole(role);
			employee.setStatus(Byte.parseByte(status));
			employeeDAO.save(employee);
			showAll();
			mv.setViewName("redirect:/employee");
		} else {
			mv.addObject("page", "employee-create.jsp");
			model.addAttribute("create", "Email da ton tai");
			mv.setViewName("redirect:/emp-create");
		}
		return mv;
	}

	
	// SEARCH FUNCTION
	public ModelAndView search(String email) {
		try {
			Employee temp = employeeDAO.findByEmail(email);
			if (temp != null) {
				listEmp.clear();
				listEmp.add(temp);
				mv.addObject("listEmp", listEmp);
			} else {
				mv.clear();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

}
