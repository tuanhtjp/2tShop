package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.OrderDAO;
import com.softech.batch107.model.Order;

@Controller
public class OrderController {
	@Autowired
	OrderDAO orderDAO;
	ModelAndView mv = new ModelAndView();
	public List<Order> listorder;
	
	//findAll Order 1
	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listorder = orderDAO.findAll();
			mv.addObject("listCat", listorder);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	//remove Order
	@RequestMapping(value = "/order/remove", method = RequestMethod.POST)
	public ModelAndView removeOrder(@RequestParam("cat") int orderID){
		Order ord = orderDAO.getOne(orderID);
		orderDAO.delete(ord);
		mv = showAll();
		return mv;
	}
}
