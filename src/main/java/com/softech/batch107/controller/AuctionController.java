package com.softech.batch107.controller;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.AuctionDAO;
import com.softech.batch107.dao.AuctionStatus;
import com.softech.batch107.dao.CategoryauctionDAO;
import com.softech.batch107.dao.CustomerDAO;
import com.softech.batch107.dao.EmployeeDAO;
import com.softech.batch107.model.Auction;
import com.softech.batch107.model.Auctionstatus;
import com.softech.batch107.model.Employee;
import com.softech.batch107.model.Categoryauction;
import com.softech.batch107.model.Customer;

@Controller
public class AuctionController {
	@Autowired
	AuctionDAO auctionDAO;
	@Autowired
	AuctionStatus auctionsatusDAO;
	@Autowired
	CategoryauctionDAO categoryauctionDAO;
	@Autowired
	CustomerDAO customerDAO;
	@Autowired
	EmployeeDAO employeeDAO;
	ModelAndView mv = new ModelAndView();
	public List<Auction> listAuction;
	public List<Auctionstatus> listAucstatus;
	public List<Employee> listEmp;
	public List<Categoryauction> listCatauc;
	public List<Customer> lisCus;

	// findAll Auction 1 2 khanh thu commit
	@RequestMapping(value = "/auction", method = RequestMethod.GET)
	public ModelAndView showAll() {
		try {
			listAuction = auctionDAO.findAll();
			mv.addObject("listAuction", listAuction);
			mv.addObject("page", "auction.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("index");
		return mv;
	}

	// remove Auction
	@RequestMapping(value = "/auction/remove", method = RequestMethod.POST)
	public ModelAndView removeAuction(@RequestParam("auc") int auctionID) {
		Auction auc = auctionDAO.getOne(auctionID);
		auctionDAO.delete(auc);
		mv = showAll();
		return mv;

	}

	// SHOW EDIT PAGE
	@RequestMapping(value = "/auc-edit/{auc}", method = RequestMethod.GET)
	public ModelAndView redirectToAuctionEdit(Model model, @PathVariable("auc") int auctionID) {
		try {
			Auction auction = auctionDAO.findOne(auctionID);
			listCatauc = categoryauctionDAO.findAll();
			lisCus = customerDAO.findAll();
			listEmp = employeeDAO.findAll();
			mv.addObject("auction", auction);
			mv.addObject("au",new Auction());
			mv.addObject("listCatauc", listCatauc);
			mv.addObject("lisCus", lisCus);
			mv.addObject("listEmp", listEmp);
			mv.addObject("page", "auction-edit.jsp");
			mv.setViewName("index");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	// SHOW CREATE PAGE
	@RequestMapping(value = "/auc-create", method = RequestMethod.GET)
	public ModelAndView redirectToAuctionCreate() {
		try {

			listCatauc = categoryauctionDAO.findAll();
			lisCus = customerDAO.findAll();
			listEmp = employeeDAO.findAll();
			listAucstatus = auctionsatusDAO.findAll();
			mv.addObject("page", "auction-create.jsp");
			mv.addObject("listCatauc", listCatauc);
			mv.addObject("lisCus", lisCus);
			mv.addObject("listEmp", listEmp);
			mv.addObject("listAucstatus", listAucstatus);
			mv.addObject("au",new Auction());
			mv.setViewName("index");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	// CREATE
	@RequestMapping(value = "/auc-create/new", method = RequestMethod.POST)
	public ModelAndView createAuction(@ModelAttribute Auction au, BindingResult result, ModelMap model ) {

		//Auction auction = new Auction();
		if (result.hasErrors()) {
			mv.addObject("page", "auction-create.jsp");
			//model.addAttribute("create", "Email da ton tai");
			mv.setViewName("redirect:/auc-create");
		} else {
			
			model.addAttribute("auctionID", au.getAuctionID());
			model.addAttribute("productName", au.getProductName());
			model.addAttribute("description", au.getDescription());
			model.addAttribute("imageURL", au.getImageURL());
			model.addAttribute("startPrice", au.getStartPrice());
			model.addAttribute("startTime", au.getStartTime());
			model.addAttribute("endTime", au.getEndTime());
			model.addAttribute("auctionstatuses", au.getAuctionstatuses());
			model.addAttribute("categoryauction", au.getCategoryauction());
			model.addAttribute("customer", au.getCustomer());
			model.addAttribute("employee", au.getEmployee());
			model.addAttribute("status", au.getStatus());
			
			
			//auctionDAO.save(au);
			showAll();
			mv.setViewName("redirect:/auction");
		}
		return mv;
	}

	// EDIT
	@RequestMapping(value = "/auc-edit/{auctionID}", method = RequestMethod.POST)
	public ModelAndView editEmloyee(Model model, @PathVariable("auctionID") int auctionID,
			@ModelAttribute("auction") Auction auction) {
		try {
			auctionDAO.save(auction);
			model.addAttribute("auction", auction);
			showAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("redirect:/auction");
		return mv;
	}

}
