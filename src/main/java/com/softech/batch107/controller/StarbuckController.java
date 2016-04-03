package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.StarbuckDAO;
import com.softech.batch107.model.Starbuck;

@Controller

public class StarbuckController {
	@Autowired
	StarbuckDAO starbuckDAO;
	ModelAndView mv = new ModelAndView();
	public List<Starbuck> listStar;
	
	//findAll Starbuck 1
	@RequestMapping(value = "/starbuck", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listStar = starbuckDAO.findAll();
			mv.addObject("listStar", listStar);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	//remove Starbuck
	@RequestMapping(value = "/starbuck/remove", method = RequestMethod.POST)
	public ModelAndView removeStarbuck(@RequestParam("star") int starbuckID){
		Starbuck star = starbuckDAO.getOne(starbuckID);
		starbuckDAO.delete(star);
		mv = showAll();
		return mv;
	}
}
