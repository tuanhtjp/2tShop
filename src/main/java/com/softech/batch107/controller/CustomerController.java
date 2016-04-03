package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ModelAttribute;
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
    
    @RequestMapping(value = "/customer/remove", method = RequestMethod.POST)
    public ModelAndView removeCustomer(@RequestParam("cus") int customerID) {
        Customer temp = customerDAO.getOne(customerID);
        customerDAO.delete(temp);
        mv = showAll();
        return mv;
    } 
    
    /*Edit alo customer*/
	@RequestMapping(value = "/customer-edit/{cus}", method = RequestMethod.GET)
	public ModelAndView redirectToCustomerEdit(Model model, @PathVariable("cus") int customerId) {
		try {
			Customer customer = customerDAO.findOne(customerId);
			mv.addObject("customer", customer);
			mv.addObject("page", "customer-edit.jsp");
			mv.setViewName("index");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping(value = "/{customerId}", method = RequestMethod.POST)
	public ModelAndView editCustomer(Model model, @PathVariable("customerId") int customerId,
			@ModelAttribute("customer") Customer customer) {
		try {
			customerDAO.save(customer);
			model.addAttribute("customer", customer);
			mv.addObject("page", "customer.jsp");
			showAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
/*	@RequestMapping(value = "/customer-edit/edit/{customerId}", method = RequestMethod.POST)
	public String editCustomer(Model model, @PathVariable("customerId") int customerId,
			@ModelAttribute("customer") Customer customer) {
		try {
			customerDAO.save(customer);
			model.addAttribute("customer", customer);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/customer";
	}*/

    
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
