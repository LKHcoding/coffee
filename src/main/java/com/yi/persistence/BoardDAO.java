package com.yi.persistence;

import com.yi.domain.BoardVO;

public interface BoardDAO {
	//추천카페
	public void rcInsert(BoardVO vo) throws Exception;
}
