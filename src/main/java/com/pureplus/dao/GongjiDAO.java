package com.pureplus.dao;

import java.util.List;

import com.pureplus.vo.GongjiVO;
import com.pureplus.vo.PageVO;


public interface GongjiDAO {

	List<GongjiVO> getList(PageVO p);

	void updateHit(int gongji_no);

	GongjiVO getGCont(int gongji_no);

	int getRowCount(PageVO p);

}
