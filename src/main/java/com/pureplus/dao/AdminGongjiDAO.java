package com.pureplus.dao;

import java.util.List;

import com.pureplus.vo.GongjiVO;
import com.pureplus.vo.PageVO;

public interface AdminGongjiDAO {

	int getListCount(PageVO p);
	List<GongjiVO> getGongjiList(PageVO p);
	void insertGongji(GongjiVO g);
	GongjiVO getGongjiCont(int no);
	void editGongji(GongjiVO g);
	void delGongji(int no);

}
