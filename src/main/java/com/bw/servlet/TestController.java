package com.bw.servlet;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bw.entity.User;
import com.bw.service.UserService;

@Controller
public class TestController {

	@Resource
	private UserService service;
	
	@RequestMapping("list.do")
	public String findAll(Model model){
		
		List<User> list = service.findAll();
		model.addAttribute("list", list);
		return "list";
	}
	
	@RequestMapping("delete.do")
	@ResponseBody
	public Integer delete(String[] uid){
		
		Integer delete = service.delete(uid);
		return delete;
	}
	
	@RequestMapping("add.do")
	@ResponseBody
	public Integer save(User user){
		Integer save = service.save(user);
		return save;
	}
	
}
