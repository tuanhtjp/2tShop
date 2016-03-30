package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.CustomerDAO;
import com.softech.batch107.model.Customer;

@Controller
public class CustomerController {

	@Autowired
    CustomerDAO customerDAO;
	ModelAndView mv = new ModelAndView();
	public List<Customer> lisCus;
//    @Override
//    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
//        ModelAndView mv = new ModelAndView("customer");
//        List<Customers> lisCus = null;
//        try {
//            lisCus = customerDAO.findAll();
//            mv.addObject("listCus", lisCus);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return mv;
//    }
    @RequestMapping(value = "/customer", method = RequestMethod.GET)
    public ModelAndView showAll() {
        try {
            lisCus = customerDAO.findAll();
            mv.addObject("listCus", lisCus);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }

    @RequestMapping(value = "/customer", method = RequestMethod.POST)
    public ModelAndView searchEmail(@RequestParam String txtSearch) {
        if (txtSearch.equals("")) {
            showAll();
        } else {
            mv.clear();
            mv=search(txtSearch);
            mv.setViewName("index");
        }
        return mv;
    }
    
    
    
    
    
  //Search function
    public List<Customer> listTemp;
    public ModelAndView search(String email) {
        try {
        	Customer temp = customerDAO.findByEmail(email);
            if (temp != null) {
                lisCus.clear();
                lisCus.add(temp);
                mv.addObject("listCus", lisCus);
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
