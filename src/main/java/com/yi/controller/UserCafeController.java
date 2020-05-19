package com.yi.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.CafeVO;
import com.yi.domain.ImageVO;
import com.yi.domain.MenuVO;
import com.yi.domain.PageMaker;
import com.yi.domain.SearchCriteria;
import com.yi.service.CafeService;

@Controller
@RequestMapping("/user/*")
public class UserCafeController {
	
	// 서비스
	@Autowired
	CafeService service;
	
	@RequestMapping(value = "/mukkaCafe/zone", method = RequestMethod.GET)
	public String cafeZoneList(SearchCriteria cri, Model model) throws Exception {
		
		List<CafeVO> list = service.listSearchCriteria(cri);
		List<ImageVO> imgList = new ArrayList<ImageVO>();
		List<Integer> starpointList = new ArrayList<Integer>();
		
		for(int i=0; i<list.size();i++) {
			int cafeNo = list.get(i).getCafeNo();
			imgList.add(service.imgSelect(cafeNo));
			starpointList.add(service.starpointSelect(cafeNo));
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.totalSearchCount(cri));
		
		model.addAttribute("cri", cri);
		model.addAttribute("list", list);
		model.addAttribute("imgList", imgList);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("starpoint", starpointList);
		
		return "/user/userMukkaCafeZoneList";
	}
	
	@RequestMapping(value = "/mukkaCafe/read", method = RequestMethod.GET)
	public String cafeZoneRead(int cafeNo, Model model) throws Exception {
		/* 카페 기본 정보 검색 */
		CafeVO cafe = service.readCafe(cafeNo);
		
		/* 카페 테마 순위 검색 */
		List<Integer> themeList = new ArrayList<Integer>();
		for(int i=1;i<7;i++) {
			int rankTheme = service.rankTheme(cafeNo, i);
			themeList.add(rankTheme);
		}
		int[] rank = {1, 1, 1, 1, 1, 1};
		for(int i=0;i<themeList.size();i++) {
			for(int j=0;j<themeList.size();j++) {
				if(themeList.get(i)<themeList.get(j)) {
					rank[i] = rank[i]+1;
				}
			}
		}
		List<Integer> themeRank = new ArrayList<Integer>();
		for(int i=0;i<themeList.size();i++) {
			if(rank[i]<=3) {
				themeRank.add(i+1);
			}
		}
		/* 카페 이미지 리스트 검색 */
		List<ImageVO> imgList = service.imgList(cafeNo);
		
		/* 카페 별점 검색 */
		Double starpoint = service.starpoint(cafeNo);//소수점 점수
		int starpointSelect = service.starpointSelect(cafeNo);//반올림 점수
		
		/* 카페 별점 변화 추이(월별) */
		List<Integer> pointList = new ArrayList<Integer>();
		for(int i=1;i<13;i++) {
			int point = service.starpointByMonth(cafeNo, i);
			pointList.add(point);
			if(point == 0) {
				break;
			}
		}
		/* 카페 메뉴 검색 */
		List<MenuVO> menuList = service.menuList(cafeNo);
		System.out.println(menuList);
		
		model.addAttribute("cafe", cafe);
		model.addAttribute("themeRank", themeRank);
		model.addAttribute("imgList", imgList);
		model.addAttribute("starpoint", starpoint);
		model.addAttribute("starpointSelect", starpointSelect);
		model.addAttribute("pointList", pointList);
		model.addAttribute("menuList", menuList);
		
		return "/user/userMukkaCafeZoneRead";
	}
	
}
