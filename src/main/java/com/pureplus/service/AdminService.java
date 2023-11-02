package com.pureplus.service;

import com.pureplus.vo.AdminVO;


public interface AdminService {

	AdminVO adminLogin(String admin_id);

	void insertAdmin(AdminVO ab);
	

}
