package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.SizeDAO;
import com.softech.batch107.model.Size;



@Controller
public class SizeController {
	@Autowired
	SizeDAO sizeDAO;
	ModelAndView mv = new ModelAndView();
	public List<Size> listSize;
	
	//findAll Size 1
	@RequestMapping(value = "/size", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listSize = sizeDAO.findAll();
			mv.addObject("listSize", listSize);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	//remove Size
	@RequestMapping(value = "/size/remove", method = RequestMethod.POST)
	public ModelAndView removeSize(@RequestParam("size") int sizeID){
		Size size = sizeDAO.getOne(sizeID);
		sizeDAO.delete(size);
		mv = showAll();
		return mv;
	}
}
