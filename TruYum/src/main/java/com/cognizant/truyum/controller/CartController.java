package com.cognizant.truyum.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.cognizant.truyum.dao.CartEmptyException;
import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.service.CartService;


@Controller
public class CartController {
	
	private static final Logger logger=LoggerFactory.getLogger(CartController.class);
	
	@Autowired
	private CartService cartdaoservice;

	public CartService getCartdaoservice() {
		return cartdaoservice;
	}

	public void setCartdaoservice(CartService cartdaoservice) {
		this.cartdaoservice = cartdaoservice;
	}
	
	@GetMapping("add-to-cart")
	public String addToCart(@RequestParam("menuitemid") long menuitemid,RedirectAttributes request)
	{
		
		System.out.println("yo");
		
		cartdaoservice.addCartItem(1, menuitemid);
		request.addAttribute("addcartstatus", true);
		
		return "redirect:show-menu-list-customer";
	}
	
	@GetMapping("show-cart")
	public String showCart(@RequestParam(required = false) boolean removecartstatus,@RequestParam("custid") int userid,ModelMap model) throws CartEmptyException
	{
		List<MenuItem> allCartItems = cartdaoservice.getAllCartItems(userid);
		
		model.put("userid", 1);
		
		if(allCartItems.isEmpty())
		{
			return "emptycart";
		}
		else
		{
			model.put("cartitems", allCartItems);
			model.put("removecartstatus", removecartstatus);
			return "cart";
		}
		
				
	}
	
	
	@GetMapping("remove-cart")
	public String removeCart(@RequestParam("menuid") int menuid,@RequestParam("userid") int userid,RedirectAttributes request)
	{
		request.addAttribute("removecartstatus", true);
		request.addAttribute("custid", userid);
		cartdaoservice.removeCartItem(userid, menuid);
		return "redirect:show-cart";
	}

	
	

}
