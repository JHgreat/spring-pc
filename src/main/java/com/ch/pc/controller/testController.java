package com.ch.pc.controller;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.pc.model.Keyword;
import com.ch.pc.model.Location;
import com.ch.pc.model.Pc;
import com.ch.pc.service.PcService;

@Controller
public class testController {
	@Autowired
	private PcService ps;
	
	@SuppressWarnings("null")
	@RequestMapping("test")
	public String main(Model model) {		
		LocalTime now = LocalTime.now();
		LocalDate nowDay = LocalDate.now();

		int currentMin = now.getMinute();
		int currentHour = now.getHour();
		int currentDay = nowDay.getDayOfMonth();
		
		return "/main/main";
	}
}