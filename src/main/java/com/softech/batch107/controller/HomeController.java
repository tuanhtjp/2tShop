package com.softech.batch107.controller;

/*//import java.text.DateFormat;
//import java.util.Date;
//import java.util.List;
*/import java.util.Locale;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.softech.batch107.dao.CustomerDAO;
//import com.softech.batch107.model.Customer;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class); 

	/*@Controller ~ sinh ra 1 bean bên dispathcer.xml;
	@Autowired ~ HomeConoller2 homeController = docxml().getbean('homeController');
	Khi mình khai báo 1 bean, tức là nó sẽ ntn
	HomeConoller2 homeController = new HomeController2();
	Khi autowired, nếu cái homeController này đang trỏ đến 1 thằng rồi, thì nó sẽ tự động trỏ đến thằng kia luôn
	ko cần tạo mới nữa. còn nếu chưa, thì nó tự tạo mới(homeController = new HomeController2()) cho mình luôn.*/
	
	@Autowired
	HomeController2 homeController;

	/*Nhớ đặt biến cho đúng pattern nghe*/
	/*Ở đây, khai báo thể hiện ra thôi, nó đã biết đây là 1 bean rồi, autowired ~ tự trỏ, nếu chưa có, tự tạo, khỏi new*/
	@Autowired
	CustomerDAO customerDAO;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		

		/*Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);*/

		/*Bởi rứa cái hàm này tưởng nó ko có = new HomeController2() nhưng mà thực ra nó tự trỏ, tự new luôn rồi
		Đó gọi là injection. Bởi rứa trong spring, hạn chế new đối tượng, bởi thằng container nó quản lý rồi.*/
		homeController.hello();
		
		/*model.addAttribute("serverTime", formattedDate);
		model.addAttribute("list", list);*/

		return "home";
	}

}
