package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.OrderdetailDAO;
import com.softech.batch107.model.Orderdetail;

@Controller

public class OrderdetailController {
	@Autowired
	OrderdetailDAO orderdetailDAO;
	ModelAndView mv = new ModelAndView();
	public List<Orderdetail> listOrderdet;
	
	//findAll Orderdetail 1
	@RequestMapping(value = "/orderdetail", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listOrderdet = orderdetailDAO.findAll();
			mv.addObject("listOrderdetail", listOrderdet);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	//remove Orderdetail
	@RequestMapping(value = "/orderdetail/remove", method = RequestMethod.POST)
	public ModelAndView removeOrderdetail(@RequestParam("orderdet") int orderdetID){
		Orderdetail ordd = orderdetailDAO.getOne(orderdetID);
		orderdetailDAO.delete(ordd);
		mv = showAll();
		return mv;
	}
}
