package com.softech.batch107.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.CustomerDAO;
import com.softech.batch107.dao.EmployeeDAO;
import com.softech.batch107.dao.OrderDAO;
import com.softech.batch107.dao.PaymentDAO;
import com.softech.batch107.dao.PromotionDAO;
import com.softech.batch107.dao.ShippedDAO;
import com.softech.batch107.model.Customer;
import com.softech.batch107.model.Employee;
import com.softech.batch107.model.Order;
import com.softech.batch107.model.Payment;
import com.softech.batch107.model.Promotion;
import com.softech.batch107.model.Shipped;

@Controller
public class OrderController {
	@Autowired
	OrderDAO orderDAO;
	@Autowired
	CustomerDAO customerDAO;
	@Autowired
	EmployeeDAO employeeDAO;
	@Autowired
	PromotionDAO promotionDAO;
	@Autowired
	ShippedDAO shippedDAO;
	@Autowired
	PaymentDAO paymentDAO;
	ModelAndView mv = new ModelAndView();
	public List<Order> listorder;
	public List<Customer> listCus;
	public List<Employee> listEmp;
	public List<Promotion> listPromo;
	public List<Shipped> listShip;
	public List<Payment> listpay;

	// findAll Order 1
	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public ModelAndView showAll() {
		try {
			listorder = orderDAO.findAll();
			mv.addObject("listorder", listorder);
			mv.addObject("page", "order.jsp");
			mv.setViewName("MyAccount");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mv;
	}

	// remove Order
	@RequestMapping(value = "/order/remove", method = RequestMethod.POST)
	public ModelAndView removeOrder(@RequestParam("cat") int orderID) {
		Order ord = orderDAO.getOne(orderID);
		orderDAO.delete(ord);
		mv.setViewName("redirect:/order");
		return mv;
	}

	// SHOW EDIT PAGE
	@RequestMapping(value = "/order-edit/{order}", method = RequestMethod.GET)
	public ModelAndView redirectToOrderEdit(Model model, @PathVariable("order") int orderID) {
		try {

			Order order = orderDAO.getOne(orderID);
			listCus = customerDAO.findAll();
			listpay = paymentDAO.findAll();
			listPromo = promotionDAO.findAll();
			listShip = shippedDAO.findAll();

			mv.addObject("order", order);
			mv.addObject("listCus", listCus);
			mv.addObject("listEmp", listEmp);
			mv.addObject("listpay", listpay);
			mv.addObject("listPromo", listPromo);
			mv.addObject("listShip", listShip);

			mv.addObject("page", "order-edit.jsp");
			mv.setViewName("index");

		} catch (Exception e) {
			e.printStackTrace();
		}

		return mv;
	}

	// EDIT
	@RequestMapping(value = "/order-edit/{orderID}", method = RequestMethod.POST)
	public ModelAndView editOrder(Model model, @PathVariable("orderID") int orderID, HttpSession session,
			@ModelAttribute("order") Order order) {
		try {
			if (session.getAttribute("login") == null) {
				LoginController loginController = new LoginController();
				mv = new ModelAndView("login");
				mv.addObject("login", "loginClient");
				return mv;

			} else {

				int employeeID = (Integer) session.getAttribute("employeeID");
				Employee employee = employeeDAO.findOne(employeeID);

				order.setEmployee(employee);
				orderDAO.save(order);
				model.addAttribute("order", order);
				showAll();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("redirect:/order");
		return mv;
	}
}
