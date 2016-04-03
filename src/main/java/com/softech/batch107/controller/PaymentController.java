package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.PaymentDAO;
import com.softech.batch107.model.Payment;

@Controller

public class PaymentController {
	@Autowired
	PaymentDAO paymentDAO;
	ModelAndView mv = new ModelAndView();
	public List<Payment> listpay;
	
	//findAll Payment  1
	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listpay = paymentDAO.findAll();
			mv.addObject("listpay", listpay);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	//remove payment
	@RequestMapping(value = "/payment/remove", method = RequestMethod.POST)
	public ModelAndView removePayment(@RequestParam("pay") int paymentID){
		Payment pay = paymentDAO.getOne(paymentID);
		paymentDAO.delete(pay);
		mv = showAll();
		return mv;
	}
}
