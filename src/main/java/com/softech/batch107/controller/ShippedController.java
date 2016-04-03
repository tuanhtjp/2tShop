package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.ShippedDAO;
import com.softech.batch107.model.Shipped;



@Controller
public class ShippedController {
	@Autowired
	ShippedDAO shippedDAO;
	ModelAndView mv = new ModelAndView();
	public List<Shipped> listShip;
	
	//findAll Shipped 1
	@RequestMapping(value = "/shipped", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listShip = shippedDAO.findAll();
			mv.addObject("listShip", listShip);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	//remove Shipped
	@RequestMapping(value = "/shipped/remove", method = RequestMethod.POST)
	public ModelAndView removeShipped(@RequestParam("shipped") int shippedID){
		Shipped ship = shippedDAO.getOne(shippedID);
		shippedDAO.delete(ship);
		mv = showAll();
		return mv;
	}
}
