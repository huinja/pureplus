package com.pureplus.service;

import java.util.List;

import com.pureplus.vo.GongjiVO;
import com.pureplus.vo.PageVO;

public interface GongjiService {

	List<GongjiVO> getList(PageVO p);

	GongjiVO getGCont(int gongji_no);

	int getRowCount(PageVO p);

}
