package com.pureplus.dao;

import com.pureplus.vo.AdminVO;


public interface AdminDAO {

	AdminVO adminLogin(String admin_id);

	void insertAdmin(AdminVO ab);
	



}
