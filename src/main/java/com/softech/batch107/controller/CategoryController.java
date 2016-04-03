package com.softech.batch107.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softech.batch107.dao.CategoryDAO;
import com.softech.batch107.model.Category;

@Controller
public class CategoryController {
	@Autowired
	CategoryDAO categoryDAO;
	ModelAndView mv = new ModelAndView();
	public List<Category> listCat;
	
	//findAll Category 1
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public ModelAndView showAll(){
		try {
			listCat = categoryDAO.findAll();
			mv.addObject("listCat", listCat);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	//remove Category
	@RequestMapping(value = "/category/remove", method = RequestMethod.POST)
	public ModelAndView removeCategory(@RequestParam("cat") int categoryID){
		Category cat = categoryDAO.getOne(categoryID);
		categoryDAO.delete(cat);
		mv = showAll();
		return mv;
	}
	

}
