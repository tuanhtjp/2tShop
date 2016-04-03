package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.ProductDAO;
import com.softech.batch107.model.Product;

@Controller

public class ProductController {
	@Autowired
	ProductDAO productDAO;
	ModelAndView mv = new ModelAndView();
	public List<Product> listPro;
	
	//findAll Product 1
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listPro = productDAO.findAll();
			mv.addObject("listPro", listPro);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	//remove Product
	@RequestMapping(value = "/product/remove", method = RequestMethod.POST)
	public ModelAndView removeProduct(@RequestParam("product") int productID){
		Product pro = productDAO.getOne(productID);
		productDAO.delete(pro);
		mv = showAll();
		return mv;
	}
}
