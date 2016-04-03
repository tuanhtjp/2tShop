package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.BrandDAO;
import com.softech.batch107.model.Brand;

	@Controller

public class BrandController {
	@Autowired
	BrandDAO brandDAO;
	ModelAndView mv = new ModelAndView();
	public List<Brand> listBrand;
	
	//findAll brand 1
	@RequestMapping(value = "/brand", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listBrand = brandDAO.findAll();
			mv.addObject("listBrand", listBrand);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	//remove Brand
	@RequestMapping(value = "/brand/remove", method = RequestMethod.POST)
	public ModelAndView removeCategory(@RequestParam("brand") int brandID){
		Brand bra = brandDAO.getOne(brandID);
		brandDAO.delete(bra);
		mv = showAll();
		return mv;
	}
}
