package com.yi.persistence;

import java.util.List;

import com.yi.domain.BoardVO;

public interface BoardDAO {
	//추천카페
	public void rcInsert(BoardVO vo) throws Exception;
	
	//테스트
	public List<BoardVO> boardList() throws Exception;
	
	
	
}
