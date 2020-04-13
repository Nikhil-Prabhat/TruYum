package com.cognizant.truyum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cognizant.truyum.dao.CartDao;
import com.cognizant.truyum.dao.CartEmptyException;
import com.cognizant.truyum.model.MenuItem;

@Component
public class CartService {

	@Autowired
	private CartDao cartdao;

	public CartDao getCartdao() {
		return cartdao;
	}

	public void setCartdao(CartDao cartdao) {
		this.cartdao = cartdao;
	}

	public void addCartItem(long userid, long menuItemId) {
		cartdao.addCartItem(userid, menuItemId);
	}

	public List<MenuItem> getAllCartItems(long userid) throws CartEmptyException {
		List<MenuItem> allCartItems = cartdao.getAllCartItems(userid);
		return allCartItems;
	}

	public void removeCartItem(long userid, long menuItemId) {
		cartdao.removeCartItem(userid, menuItemId);
	}

}
