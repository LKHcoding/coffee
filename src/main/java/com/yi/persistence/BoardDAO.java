package com.yi.persistence;

import java.util.List;

import com.yi.domain.BoardVO;
import com.yi.domain.Criteria;

public interface BoardDAO {
	
	/*** 추천카페 ***/
	//추천카페 -- 리스트	(테스트용)
	public List<BoardVO> recommendboardList() throws Exception;
	//추천카페 -- 페이징된 리스트	
	public List<BoardVO> recommendboardListCriteria(Criteria cri) throws Exception;

	//추천카페 -- 등록
	public void recommendInsert(BoardVO vo) throws Exception;
	//추천카페 -- 상세보기
	public BoardVO recommendReadByNo(int boardNo);
	
	/*** 공통 ***/
	//오늘 등록된 글 갯수(**커뮤니티 공통**)
	public int todayBoardCount(int cBoardNo) throws Exception;
	//각 서브게시물별 등록된 게시글 총 갯수(페이징시 이용)
	public int totalSearchCount(int cBoardNo) throws Exception; // 공통

	
	/*** 탐방기 ***/
}
