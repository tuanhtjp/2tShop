package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.CategoryauctionDAO;
import com.softech.batch107.model.Categoryauction;

@Controller

public class CategoryAuctionController {
	@Autowired
	CategoryauctionDAO categoryaucDAO;
	ModelAndView mv = new ModelAndView();
	public List<Categoryauction> listCatauc;
	
	//findAll Categoryauc 1
	@RequestMapping(value = "/categoryauction", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listCatauc = categoryaucDAO.findAll();
			mv.addObject("listCatauc", listCatauc);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	//remove Categoryauction
	@RequestMapping(value = "/categoryauction/remove", method = RequestMethod.POST)
	public ModelAndView removeCategoryauction(@RequestParam("catauc") int categoryaucID){
		Categoryauction catauc = categoryaucDAO.getOne(categoryaucID);
		categoryaucDAO.delete(catauc);
		mv = showAll();
		return mv;
	}
}
