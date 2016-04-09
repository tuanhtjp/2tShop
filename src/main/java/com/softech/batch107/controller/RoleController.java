package com.softech.batch107.controller;

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

import com.softech.batch107.dao.RoleDAO;
import com.softech.batch107.model.Role;

@Controller
public class RoleController {
	@Autowired
	RoleDAO roleDAO;
	ModelAndView mv = new ModelAndView();
	public List<Role> listRole;
	
	//GET ALL
	@RequestMapping(value = "/role", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listRole = roleDAO.findAll();
			mv.addObject("listRole", listRole);
			mv.addObject("page", "role.jsp");
			mv.setViewName("index");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	

		//SEARCH
	    @RequestMapping(value = "/role", method = RequestMethod.POST)
	    public ModelAndView searchRoleName(@RequestParam String txtSearch) {
	    	if (txtSearch.equals("")) {
	            showAll();
	        } else {
	            mv.clear();
	            search(txtSearch);
	        }
	    	mv.addObject("page", "role.jsp");
			mv.setViewName("index");
	        return mv;
	    }
	
	//DELETE
	@RequestMapping(value = "/role/remove", method = RequestMethod.POST)
	public ModelAndView removeRole(@RequestParam("rol") int roleID){
		Role role = roleDAO.getOne(roleID);
		roleDAO.delete(role);
		mv.setViewName("redirect:/role");
		return mv;
	}
	
	//SHOW EDIT PAGE
		@RequestMapping(value = "/role-edit/{rol}", method = RequestMethod.GET)
		public ModelAndView redirectToCustomerEdit(Model model, @PathVariable("rol") int roleID) {
			try {
				Role role = roleDAO.findOne(roleID);
				mv.addObject("role", role);
				mv.addObject("page", "role-edit.jsp");
				mv.setViewName("index");
			} catch (Exception e) {
				e.printStackTrace();
			}
			return mv;
		}
	
		//EDIT
		@RequestMapping(value = "/role-edit/{roleId}", method = RequestMethod.POST)
		public ModelAndView editCustomer(Model model, @PathVariable("roleId") int roleId,
				@ModelAttribute("role") Role role) {
			try {
				roleDAO.save(role);
				model.addAttribute("role", role);
				showAll();
			} catch (Exception e) {
				e.printStackTrace();
			}
			mv.setViewName("redirect:/role");
			return mv;
		}	
	//SHOW CREATE PAGE
			@RequestMapping(value = "/role-create", method = RequestMethod.GET)
			public ModelAndView redirectToCustomerCreate() {
				try {
					mv.addObject("page", "role-create.jsp");
					mv.setViewName("index");
				} catch (Exception e) {
					e.printStackTrace();
				}
				return mv;
			}
			
			//CREATE
			@RequestMapping(value = "/role-create/new", method = RequestMethod.POST)
			public ModelAndView createCustomer(@RequestParam String roleName, @RequestParam String des,HttpSession session, Model model) {
		            Role role = roleDAO.findByRoleName(roleName);
		            if (role == null) {
		            	role = new Role();
		            	role.setRoleName(roleName);
		            	role.setDescription(des);
		                roleDAO.save(role);
		    			showAll();
		    			mv.setViewName("redirect:/role");
		            } else {
		            	/*mv.addObject("page","customer-create.jsp");*/
		                /*model.addAttribute("create", "Email da ton tai");*/
		                mv.setViewName("redirect:/role-create");
		            }	
		            return mv;
		        }		
	
	//SEARCH FUNCTION
    public ModelAndView search(String name) {
        try {
        	Role temp = roleDAO.findOne(Integer.parseInt(name));
            if (temp != null) {
                listRole.clear();
                listRole.add(temp);
                mv.addObject("listRole", listRole);
            }
            else{
                mv.clear();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }
}
