package com.zensar.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.zensar.product.Dao.ProductDao;
import com.zensar.product.model.Product;



@Controller
public class ProductController 
{
	
	@Autowired
	private ProductDao ProductDao;
	
	@GetMapping("/")
	public String getAll(Model model)
	{
		List<Product> list= ProductDao.findAll();
		model.addAttribute("productlist",list);
		return "index";
	}
	
	@PostMapping(value="/save")
	public String save(@ModelAttribute("product") Product p)
	{	
		ProductDao.save(p);
		return "redirect:/";

	}
		
	@GetMapping(value="/add")
	public String AddProduct()
	{	
		return "addProduct";
	}
	
	@GetMapping(value="/edit/{id}")
	public String edit(@PathVariable("id") int id, Model model)
	{
		
		Product p=ProductDao.findById(id).orElse(null);
		ProductDao.deleteById(id);
		model.addAttribute("Product",p);
		return "updateProduct";
	}
	
	
	@PostMapping("/edit/update")
	public String update(@ModelAttribute("s") Product p)
	{
		ProductDao.save(p);
		return "index";
	}
	
	
	@GetMapping(value="/delete/{id}")
	public String edit(@PathVariable("id") int id)
	{
		ProductDao.deleteById(id);
		return "redirect:/";
	}	

}
