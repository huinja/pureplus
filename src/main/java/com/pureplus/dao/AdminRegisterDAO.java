package com.pureplus.dao;

import java.util.List;

import com.pureplus.vo.PageVO;
import com.pureplus.vo.RegisterVO;

public interface AdminRegisterDAO {
	
	void editM(RegisterVO m);

	void delM(String id);

	int getListCount(PageVO p);

	List<RegisterVO> getMemberList(PageVO p);

	RegisterVO getMem(String id);
}
