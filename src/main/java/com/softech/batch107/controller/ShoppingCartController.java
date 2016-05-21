package com.softech.batch107.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.CustomerDAO;
import com.softech.batch107.dao.OrderDAO;
import com.softech.batch107.dao.PaymentDAO;
import com.softech.batch107.dao.ProductDAO;
import com.softech.batch107.dao.PromotionDAO;
import com.softech.batch107.dao.ShippedDAO;
import com.softech.batch107.model.Customer;
import com.softech.batch107.model.Item;
import com.softech.batch107.model.Order;
import com.softech.batch107.model.Orderdetail;
import com.softech.batch107.model.OrderdetailPK;
import com.softech.batch107.model.Payment;
import com.softech.batch107.model.Product;
import com.softech.batch107.model.Promotion;
import com.softech.batch107.model.Shipped;

@Controller
@RequestMapping("/shoppingcart")
public class ShoppingCartController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CustomerDAO customerDAO;
	@Autowired
	PaymentDAO paymentDAO;
	@Autowired
	ShippedDAO shippedDAO;
	@Autowired
	PromotionDAO promotionDAO;
	
	@Autowired
	OrderDAO orderDAO;
	ModelAndView mv = new ModelAndView();
	public List<Product> listPro;
	public List<Shipped> listship;
	public List<Payment> listpayment;
	public List<Promotion> listpromotion;
	public List<Order> listOrder;
	
	

	private Product pm = new Product();

	// order
	@RequestMapping(value = "/ordernow/{id}", method = RequestMethod.GET)
	public ModelAndView ordernow(@PathVariable(value = "id") int id, ModelMap modelMap, HttpSession session) {
		List<Item> cart = null;
		if (session.getAttribute("cart") == null) {
			cart = new ArrayList<Item>();
			session.setAttribute("cart", cart);
		}

		cart = (List<Item>) session.getAttribute("cart");
		listpayment = paymentDAO.findAll();
		listship= shippedDAO.findAll();
		mv.addObject("listpayment", listpayment);
		mv.addObject("listship", listship);

		Item item = new Item();
		item.setProduct(productDAO.findOne(id));
		item.setQuantity(1);

		boolean result = false;
		for (int i = 0; i < cart.size(); i++) {
			Item temp = cart.get(i);
			if (temp.getProduct().getProductID() == item.getProduct().getProductID()) {
				temp.setQuantity(temp.getQuantity() + item.getQuantity());
				result = true;
			}
		}

		if (result == false) {
			cart.add(item);
		}

		/*session.setAttribute("cart", cart);*/

		mv.addObject("page", "cart.jsp");
		mv.setViewName("HomeT");
		return mv;
	}

	// delete item
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable(value = "id") int id, HttpSession session, ModelMap modelMap) {
		List<Item> cart = (List<Item>) session.getAttribute("cart");

		boolean result = false;
		for (int i = 0; i < cart.size(); i++) {
			Item item = cart.get(i);
			if (item.getProduct().getProductID() == id) {
				cart.remove(i);
				result = true;
			}
		}

		String message = "";
		if (result) {
			message = "Delete Complete";
		} else {
			message = "Delete fail";
		}

		modelMap.addAttribute("message", message);
		session.setAttribute("cart", cart);
		mv.addObject("page", "cart.jsp");
		mv.setViewName("HomeT");
		return mv;

	}
	
	
	//check out
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public ModelAndView showCheckout() {
		
		listpayment = paymentDAO.findAll();
		listship= shippedDAO.findAll();
		mv.addObject("listpayment", listpayment);
		mv.addObject("listship", listship);
		
		mv.addObject("page", "cart.jsp");
		mv.setViewName("HomeT");
		return mv;
    }
	
	

	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public ModelAndView checkout(ModelMap modelMap, HttpSession session) {
		List<Item> cart = (ArrayList<Item>) session.getAttribute("cart");

		if (session.getAttribute("login") == null) {
			LoginController loginController = new LoginController();
			 mv=new ModelAndView("login");
	           mv.addObject("login", "loginClient");
	            return mv;
		} else if (session.getAttribute("cart") == null || cart.size() == 0) {
			mv.addObject("page", "cart.jsp");
			mv.setViewName("HomeT");
			return mv;
		} else {
			Order order = new Order();
			int customerID = (Integer) session.getAttribute("customerID");
			
		/*	int shipID = (Integer) session.getAttribute("shipID");
			int paymentID = (Integer) session.getAttribute("paymentID");
			Shipped shipped = shippedDAO.findOne(shipID);
			Payment payment = paymentDAO.findOne(paymentID);
			order.setPayment(payment);
			order.setShipped(shipped);*/
			
			Customer customer = customerDAO.findOne(customerID);
			
			order.setCustomer(customer);
			order.setOrderDate(new Date());
			order.setStatus(new Byte("0"));
			order.setOrderdetails(new ArrayList<Orderdetail>());
			order = orderDAO.save(order);

			for (int i = 0; i < cart.size(); i++) {
				Product product = cart.get(i).getProduct();
				int quantity = cart.get(i).getQuantity();

				Orderdetail orderDetail = new Orderdetail();
				OrderdetailPK orderDetailPK = new OrderdetailPK();
				orderDetailPK.setOrderID(order.getOrderID());
				orderDetailPK.setProductID(product.getProductID());
				orderDetail.setId(orderDetailPK);

				orderDetail.setProduct(product);
				orderDetail.setQuantity(Short.parseShort("" + quantity));
				orderDetail.setUnitPrice(product.getPrice());

				// Phải set cả 2 bên order và order detail thì casade mới hoạt
				// động
				orderDetail.setOrder(order);
				order.getOrderdetails().add(orderDetail);

				session.removeAttribute("cart");
			}
			orderDAO.save(order);
			System.out.println("Complete");
			mv.addObject("page", "MyAccount.jsp");
			mv.setViewName("HomeT");
			return mv;
		}
	}
	
	
	//Show customer order 
		@RequestMapping(value = "/showOrder", method = RequestMethod.GET)
	    public ModelAndView showOrder(@PathVariable(value = "CustomerID") Sort  CustomerID, HttpSession session) {
			if (session.getAttribute("login") == null) {
				LoginController loginController = new LoginController();
				 mv=new ModelAndView("login");
		           mv.addObject("login", "loginClient");
		            return mv;
			}else{
				Order order = (Order) orderDAO.findAll(CustomerID);
			
				listOrder = orderDAO.findAll(CustomerID);
				mv.addObject("listOrder", listOrder);
				mv.addObject("page", "cart.jsp");
				mv.setViewName("HomeT");
				return mv;
			}
			
			
			
	    }
		
	
	/*
	 * 
	 * 
	@RequestMapping(value = "/checkout1", method = RequestMethod.GET)
    public ModelAndView showCart() {
		mv.addObject("page", "CheckOut.jsp");
		mv.setViewName("HomeT");
		return mv;
    }
	 * 
	 * 
	@RequestMapping(value = "/checkout1", method = RequestMethod.POST)
	public ModelAndView checkout1(ModelMap modelMap, HttpSession session) {
		List<Item> cart = (ArrayList<Item>) session.getAttribute("cart");

		if (session.getAttribute("login") == null) {
			LoginController loginController = new LoginController();
			 mv=new ModelAndView("login");
	           mv.addObject("login", "loginClient");
	            return mv;
		} else if (session.getAttribute("cart") == null || cart.size() == 0) {
			mv.addObject("page", "cart.jsp");
			mv.setViewName("HomeT");
			return mv;
		} else {
			Order order = new Order();
			int customerID = (Integer) session.getAttribute("customerID");
			Customer customer = customerDAO.findOne(customerID);
			order.setCustomer(customer);
			order.setOrderDate(new Date());
			order.setStatus(new Byte("0"));
			order.setOrderdetails(new ArrayList<Orderdetail>());
			order = orderDAO.save(order);

			for (int i = 0; i < cart.size(); i++) {
				Product product = cart.get(i).getProduct();
				int quantity = cart.get(i).getQuantity();

				Orderdetail orderDetail = new Orderdetail();
				OrderdetailPK orderDetailPK = new OrderdetailPK();
				orderDetailPK.setOrderID(order.getOrderID());
				orderDetailPK.setProductID(product.getProductID());
				orderDetail.setId(orderDetailPK);

				orderDetail.setProduct(product);
				orderDetail.setQuantity(Short.parseShort("" + quantity));
				orderDetail.setUnitPrice(product.getPrice());

				// Phải set cả 2 bên order và order detail thì casade mới hoạt
				// động
				orderDetail.setOrder(order);
				order.getOrderdetails().add(orderDetail);

				session.removeAttribute("cart");
			}
			orderDAO.save(order);
			System.out.println("Complete");
			mv.addObject("page", "result.jsp");
			mv.setViewName("HomeT");
			return mv;
		}
	}*/
}
