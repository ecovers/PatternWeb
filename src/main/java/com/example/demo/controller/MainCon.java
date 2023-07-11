package com.example.demo.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.dto.AllDTO;
import com.example.demo.dto.MainDTO;
import com.example.demo.dto.ShippingDTO;
import com.example.demo.mapper.MainMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@Controller
public class MainCon {
	
	@Autowired
	MainMapper mainMapper;
	
	
	
	
	@GetMapping("/") 
	public String connect(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			Model model) {
		
		
		
		List<MainDTO> main = mainMapper.main();
		
		List<ShippingDTO> shipping = mainMapper.shipping();
		
		AllDTO all = new AllDTO(main, shipping);
		
		session.setAttribute("test", all);
		
		return "mainPage";
		
	}
	
	
	
	
}