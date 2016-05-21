package com.softech.batch107.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.BrandDAO;
import com.softech.batch107.dao.CategoryDAO;
import com.softech.batch107.dao.EmployeeDAO;
import com.softech.batch107.dao.ProductDAO;
import com.softech.batch107.dao.SizeDAO;
import com.softech.batch107.model.Auction;
import com.softech.batch107.model.Brand;
import com.softech.batch107.model.Category;
import com.softech.batch107.model.Customer;
import com.softech.batch107.model.Employee;
import com.softech.batch107.model.Product;
import com.softech.batch107.model.Size;

@Controller
public class ProductController {
	@Autowired
	ProductDAO productDAO;
	CategoryDAO categoryDAO;
	EmployeeDAO employeeDAO;
	BrandDAO brandDAO;
	SizeDAO sizeDAO;
	ModelAndView mv = new ModelAndView();
	public List<Product> listPro;
	public List<Category> listCat;
	public List<Employee> listEmp;
	public List<Brand> listBrand;
	public List<Size> listSize;

	// GET ALL
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public ModelAndView showAll() {
		try {
			listPro = productDAO.findAll();
			mv.addObject("listPro", listPro);
			mv.addObject("page", "product.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("index");
		return mv;
	}

	// Show ALL
	@RequestMapping(value = "/productC", method = RequestMethod.GET)
	public ModelAndView showAll1() {
		try {
			listPro = productDAO.findAll();
			mv.addObject("listPro", listPro);
			mv.addObject("page", "productC.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("HomeT");
		return mv;
	}

	
	
	
	
	// Show detail
		@RequestMapping(value = "/showDetail/{productID}", method = RequestMethod.GET)
		public ModelAndView showDetail( Model model, @PathVariable("productID") int productID,
				@ModelAttribute("product") Product product) {
			try {
				Product pro = productDAO.findOne(productID);
				mv.addObject("pro", pro);
				mv.addObject("page", "product-detail.jsp");
				mv.setViewName("HomeT");
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return mv;
		}
		
	// findAll Product 1
	/*
	 * @RequestMapping(value = "/product", method = RequestMethod.GET) public
	 * ModelAndView showAll(){ try { listPro = productDAO.findAll();
	 * mv.addObject("listPro", listPro); } catch (Exception e) {
	 * e.printStackTrace(); } return mv; }
	 */
	// remove Product
	@RequestMapping(value = "/product/remove", method = RequestMethod.POST)
	public ModelAndView removeProduct(@RequestParam("product") int productID) {
		Product pro = productDAO.getOne(productID);
		productDAO.delete(pro);
		mv = showAll();
		return mv;
	}
	/*
	// SHOW CREATE PAGE
	@RequestMapping(value = "/pro-create", method = RequestMethod.GET)
	public ModelAndView redirectToProductCreate() {
		try {
			mv.addObject("page", "product-create.jsp");
			listCat = categoryDAO.findAll();
			listEmp = employeeDAO.findAll();
			listBrand = brandDAO.findAll();
			listSize = sizeDAO.findAll();
			mv.addObject("listCat", listCat);
			mv.addObject("listEmp", listEmp);
			mv.addObject("listBrand", listBrand);
			mv.addObject("listSize", listSize);
			mv.setViewName("index");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	// create product
	@RequestMapping(value = "/pro-create", method = RequestMethod.POST)
	public ModelAndView CreateProduct(@ModelAttribute Product pro, BindingResult result, ModelMap model,
			HttpSession session) {
		
		if (result.hasErrors()) {
			mv.addObject("page", "product-create.jsp");
			mv.setViewName("redirect:/pro-create");
		}
		if (session.getAttribute("login") == null) {
			LoginController loginController = new LoginController();
			mv = new ModelAndView("login");
			mv.addObject("login", "loginAdmin");
			return mv;

		} else {

			model.addAttribute("barcode", pro.getBarcode());
			model.addAttribute("description", pro.getDescription());
			model.addAttribute("discount", pro.getDiscount());
			model.addAttribute("imageUrl", pro.getImageUrl());
			model.addAttribute("price", pro.getPrice());
			model.addAttribute("productName", pro.getProductName());
			model.addAttribute("quantity", pro.getQuantity());
			model.addAttribute("status", pro.getStatus());
			model.addAttribute("brand", pro.getBrand());
			model.addAttribute("category", pro.getCategory());
			model.addAttribute("size", pro.getSize());

			 Product product = new Product(); 
			int employeeID = (Integer) session.getAttribute("employeeID");
			Employee employee = employeeDAO.findOne(employeeID);
			product.setEmployee(employee);
			
			product.setCreatedDate(new Date());
			product = productDAO.save(product);

			
			System.out.println("Complete");
			mv.addObject("page", "product.jsp");
			mv.setViewName("index");
			return mv;
		}
	}*/

	/*
	 * // Upload One File.
	 * 
	 * @RequestMapping(value = "/uploadOneFile") public String
	 * uploadOneFileHandler() { // Forward to
	 * "/WEB-INF/pages/uploadOneFile.jsp". return "uploadOneFile"; }
	 * 
	 * @RequestMapping(value = "/doUpload", method = RequestMethod.POST) public
	 * String uploadFileHandler(HttpServletRequest request, Model model,
	 * 
	 * @RequestParam("file") MultipartFile[] files) {
	 * 
	 * // Thư mục gốc upload file. String uploadRootPath =
	 * request.getServletContext().getRealPath("upload");
	 * System.out.println("uploadRootPath=" + uploadRootPath);
	 * 
	 * File uploadRootDir = new File(uploadRootPath); // // Tạo thư mục gốc
	 * upload nếu nó không tồn tại. if (!uploadRootDir.exists()) {
	 * uploadRootDir.mkdirs(); } // List<File> uploadedFiles = new
	 * ArrayList<File>(); for (int i = 0; i < files.length; i++) { MultipartFile
	 * file = files[i];
	 * 
	 * // Tên file gốc tại Client. String name = file.getOriginalFilename();
	 * System.out.println("Client File Name = " + name);
	 * 
	 * if (name != null && name.length() > 0) { try { byte[] bytes =
	 * file.getBytes();
	 * 
	 * // Tạo file tại Server. File serverFile = new
	 * File(uploadRootDir.getAbsolutePath() + File.separator + name);
	 * 
	 * // Luồng ghi dữ liệu vào file trên Server. BufferedOutputStream stream =
	 * new BufferedOutputStream( new FileOutputStream(serverFile));
	 * stream.write(bytes); stream.close(); // uploadedFiles.add(serverFile);
	 * System.out.println("Write file: " + serverFile); } catch (Exception e) {
	 * System.out.println("Error Write file: " + name); } } }
	 * model.addAttribute("uploadedFiles", uploadedFiles); return
	 * "uploadResult"; }
	 * 
	 */

}
