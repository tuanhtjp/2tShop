package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.AuctionDAO;
import com.softech.batch107.model.Auction;

	@Controller
public class AuctionController {
	@Autowired
	AuctionDAO auctionDAO;
	ModelAndView mv = new ModelAndView();
	public List<Auction> listAuction;
	
	//findAll Auction 1 2 khanh thu commit
	@RequestMapping(value = "/auction", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listAuction = auctionDAO.findAll();
			mv.addObject("listAuction", listAuction);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	//remove Auction     
	@RequestMapping(value = "/auction/remove", method = RequestMethod.POST)
	public ModelAndView removeAuction(@RequestParam("auc") int auctionID){
		Auction auc = auctionDAO.getOne(auctionID);
		auctionDAO.delete(auc);
		mv = showAll();
		return mv;
		
	}
	
}
