package com.cognizant.truyum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cognizant.truyum.dao.MenuItemDao;
import com.cognizant.truyum.model.MenuItem;

@Component
public class MenuItemService {

	@Autowired
	private MenuItemDao menuitemdao;

	public MenuItemDao getMenuitemdao() {
		return menuitemdao;
	}

	public void setMenuitemdao(MenuItemDao menuitemdao) {
		this.menuitemdao = menuitemdao;
	}

	public List<MenuItem> getMenuItemListAdmin() {
		List<MenuItem> menuItemListAdmin = menuitemdao.getMenuItemListAdmin();
		return menuItemListAdmin;
	}

	public List<MenuItem> getMenuItemListCustomer() {
		List<MenuItem> menuItemListCustomer = menuitemdao.getMenuItemListCustomer();
		return menuItemListCustomer;
	}

	public void modifyMenuItem(MenuItem menuItem) {
		menuitemdao.modifyMenuItem(menuItem);
	}

	public MenuItem getMenuItem(long menuItemId) {
		MenuItem menuItem = menuitemdao.getMenuItem(menuItemId);
		return menuItem;
	}

}
