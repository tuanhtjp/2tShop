package com.softech.batch107.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class MyController {
 
   @RequestMapping(value = { "/admin" }, method = RequestMethod.GET)
   public String homePage(Model model) {
       return "index";
   }
 
    
   
}