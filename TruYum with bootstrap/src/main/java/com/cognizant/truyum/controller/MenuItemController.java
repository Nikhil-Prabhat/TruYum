package com.cognizant.truyum.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.service.MenuItemService;
import com.cognizant.truyum.validator.MyFormValidator;

@Controller
public class MenuItemController {

	private static final Logger LOGGER = LoggerFactory.getLogger(MenuItemController.class);

	@Autowired
	private MenuItemService menuItemService;
	
	@Autowired
	private MyFormValidator validator;

	public MenuItemService getMenuItemService() {
		return menuItemService;
	}
	

	public void setMenuItemService(MenuItemService menuItemService) {
		this.menuItemService = menuItemService;
	}
	
	public MyFormValidator getValidator() {
		return validator;
	}


	public void setValidator(MyFormValidator validator) {
		this.validator = validator;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder)
	{
		binder.addValidators(validator);
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
		        dateFormat, false));
	}

	@GetMapping("show-menu-list-admin")
	public String showMenuItemListAdmin(ModelMap model) {
		LOGGER.info("start");
		List<MenuItem> menuItemListAdmin = menuItemService.getMenuItemListAdmin();
		model.put("adminlist", menuItemListAdmin);
		LOGGER.info("End");
		return "admin";
	}

	@GetMapping("show-menu-list-customer")
	public String showMenuItemListCustomer(@RequestParam(required = false) boolean addcartstatus,ModelMap model) {
		LOGGER.info("start");
		List<MenuItem> menuItemListCustomer = menuItemService.getMenuItemListCustomer();
		model.put("customerlist", menuItemListCustomer);
		model.put("addcartstatus",addcartstatus);
		LOGGER.info("end");
		return "customer";
	}
	
	@GetMapping("show-edit-menu-item")
	public String showEditMenuItem(@RequestParam int id ,ModelMap model)
	{
		LOGGER.info("Start");
		MenuItem menuItem = menuItemService.getMenuItem(id);
		model.put("menuitem", menuItem);
		LOGGER.info("End");
		return "editMenu";
	}
	
	@PostMapping("edit-menu-item")
	public String editMenuItem(@ModelAttribute("menuitem") @Validated MenuItem menuItem,BindingResult result)
	{
		LOGGER.info("Start");
		
		if(result.hasErrors())
		{
			System.out.println(result.toString());
			
			//menuItemService.modifyMenuItem(menuItem);
			return "editMenu";
		}
		else
		{
			//System.out.println(menuItem);
			menuItemService.modifyMenuItem(menuItem);
			return "edit-menu-item-status";
		}
		
		
		
	}
	
	
	
	
	@ModelAttribute("categoryList")
	   public List<String> getNumbersList() {
	      List<String> numbersList = new ArrayList<>();
	      numbersList.add("Starters");
	      numbersList.add("Main Course");
	      numbersList.add("Dessert");
	      numbersList.add("Drinks");
	      return numbersList;
	   }


	

}
