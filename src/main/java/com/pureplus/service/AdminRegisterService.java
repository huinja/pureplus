package com.pureplus.service;

import java.util.List;

import com.pureplus.vo.PageVO;
import com.pureplus.vo.RegisterVO;

public interface AdminRegisterService {
	void editM(RegisterVO m);
	
	void delM(String id);

	int getListCount(PageVO p);

	List<RegisterVO> getRegisterList(PageVO p);

	RegisterVO getMem(String id);
}
