package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.PromotionDAO;
import com.softech.batch107.model.Promotion;

@Controller

public class PromotionController {
	@Autowired
	PromotionDAO promotionDAO;
	ModelAndView mv = new ModelAndView();
	public List<Promotion> listPromo;
	
	//findAll Promotion 1
	@RequestMapping(value = "/promotion", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listPromo = promotionDAO.findAll();
			mv.addObject("listPromo", listPromo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	//remove promotion
	@RequestMapping(value = "/promotion/remove", method = RequestMethod.POST)
	public ModelAndView removepayment(@RequestParam("promo") int promotionID){
		Promotion promo = promotionDAO.getOne(promotionID);
		promotionDAO.delete(promo);
		mv = showAll();
		return mv;
	}
}
