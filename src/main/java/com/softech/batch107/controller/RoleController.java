package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.RoleDAO;
import com.softech.batch107.model.Role;

@Controller
public class RoleController {
	@Autowired
	RoleDAO roleDAO;
	ModelAndView mv = new ModelAndView();
	public List<Role> listRole;
	
	//findAll Role 1
	@RequestMapping(value = "/role", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listRole = roleDAO.findAll();
			mv.addObject("listRole", listRole);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	//remove Role
	@RequestMapping(value = "/role/remove", method = RequestMethod.POST)
	public ModelAndView removepayment(@RequestParam("role") int roleID){
		Role rol = roleDAO.getOne(roleID);
		roleDAO.delete(rol);
		mv = showAll();
		return mv;
	}
}
