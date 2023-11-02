package com.pureplus.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pureplus.dao.AdminDAO;
import com.pureplus.vo.AdminVO;



@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDao;

	@Override
	public AdminVO adminLogin(String admin_id) {
		return this.adminDao.adminLogin(admin_id);
	}

	@Override
	public void insertAdmin(AdminVO ab) {
		this.adminDao.insertAdmin(ab);
		
	}



}
