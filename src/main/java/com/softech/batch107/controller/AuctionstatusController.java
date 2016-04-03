package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.AuctionStatus;
import com.softech.batch107.model.Auctionstatus;


	@Controller
public class AuctionstatusController {
	@Autowired
	AuctionStatus auctionsatusDAO;
	ModelAndView mv = new ModelAndView();
	public List<Auctionstatus> listAucstatus;
	
	//findAll Auctionstatus 1
	@RequestMapping(value = "/auctionstatus", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listAucstatus = auctionsatusDAO.findAll();
			mv.addObject("listAucstatú", listAucstatus);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	//remove Auctionstatus
	@RequestMapping(value = "/auctionstatus/remove", method = RequestMethod.POST)
	public ModelAndView removeAuctionstatus(@RequestParam("aucstatus") int auctionstaID){
		Auctionstatus aucst= auctionsatusDAO.getOne(auctionstaID);
		auctionsatusDAO.delete(aucst);
		mv = showAll();
		return mv;
		
	}
}
