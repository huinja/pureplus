package com.pureplus.service;

import java.util.List;

import com.pureplus.vo.GongjiVO;
import com.pureplus.vo.PageVO;

public interface AdminGongjiService {

	int getListCount(PageVO p);
	List<GongjiVO> getGongjiList(PageVO p);
	void insertGongji(GongjiVO g);
	GongjiVO getGongjiCont(int no);
	void editGongji(GongjiVO g);
	void delGongji(int no);

}
