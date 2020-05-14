package com.yi.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.CafeVO;
import com.yi.domain.Criteria;
import com.yi.domain.ImageVO;
import com.yi.domain.PageMaker;
import com.yi.service.CafeService;

@Controller
@RequestMapping("/user/*")
public class UserCafeController {
	
	// 서비스
	@Autowired
	CafeService service;
	
	@RequestMapping(value = "/mukkaCafe/zone", method = RequestMethod.GET)
	public String cafeZoneList(Criteria cri, Model model) throws Exception {
		
		List<CafeVO> list = service.listCriteria(cri);
		List<ImageVO> imgList = new ArrayList<ImageVO>();
		for(int i=0; i<list.size();i++) {
			int cafeNo = list.get(i).getCafeNo();
			System.out.println(service.imgSelect(cafeNo));
			imgList.add(service.imgSelect(cafeNo));
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.totalCount());
		
		model.addAttribute("cri", cri);
		model.addAttribute("list", list);
		model.addAttribute("imgList", imgList);
		model.addAttribute("pageMaker", pageMaker);
		
		return "/user/userMukkaCafeZoneList";
	}
	
	
}
