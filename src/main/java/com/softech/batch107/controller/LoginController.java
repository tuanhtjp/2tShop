package com.softech.batch107.controller;

import java.util.List;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.CustomerDAO;
import com.softech.batch107.model.Customer;

@Controller
public class LoginController {

	@Autowired
	CustomerDAO customerDAO;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLoginForm() {
        return "login-admin";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView verLogin(@RequestParam String txtEmail, @RequestParam String txtPass, HttpSession session, Model model) {
    	if (txtEmail.equals("") && txtPass.equals("")) {
            mv=new ModelAndView("login-admin");
            mv.addObject("login", "Xin lỗi, vui lòng nhập tên đăng nhập và mật khẩu");
            return mv;
        } else {
            Customer cus = customerDAO.findByEmailAndPasswordAndStatus(txtEmail, txtPass, (byte) 0);
            if (cus != null) {
                mv=showAll();
                mv.addObject("login", cus.getFullName());
                mv.setViewName("index");
                return mv;
            } else {
                mv=new ModelAndView("login-admin");
                mv.addObject("login", "Xin lỗi, tên đăng nhập hoặc mật khẩu không đúng");
                return mv;
            }
        }
    }

    /*
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView register(@RequestParam String txtEmail, @RequestParam String txtFullName, @RequestParam String txtPass, HttpSession session, Model model) {
    	if (txtFullName.equals("") || txtEmail.equals("") || txtPass.equals("")) {
            mv=new ModelAndView("login-admin");
            mv.addObject("login", "Xin lỗi, vui lòng nhập thông tin bên dưới");
            return mv;
        } else {
            Customer temp = customerDAO.findByEmail(txtEmail);
            if (temp == null) {
                temp.setFullName(txtFullName);
                temp.setEmail(txtEmail);
                temp.setPassword(txtPass);
                temp.setStatus((byte) 0);
                customerDAO.create(temp);
                mv=new ModelAndView("login-admin");
                mv.addObject("login", "Đăng ký thành công");
                return mv;
            } else {
                mv=new ModelAndView("login-admin");
                mv.addObject("login", "Xin lỗi, Email đã tồn tại");
                return mv;
            	
            }

        }
    }
      */  
    
    
    
    
    
  //Lấy ra list Cus
    ModelAndView mv = new ModelAndView();
    public List<Customer> listTemp;
    public ModelAndView showAll() {
        try {
        	
            listTemp = customerDAO.findAll();
            mv.addObject("listCus", listTemp);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }
}