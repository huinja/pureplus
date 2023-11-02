package com.pureplus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pureplus.dao.AdminRegisterDAO;
import com.pureplus.vo.PageVO;
import com.pureplus.vo.RegisterVO;

@Service
public class AdminRegisterServiceImpl implements AdminRegisterService {
	
	@Autowired
	private AdminRegisterDAO adminRegisterDao;
	
	@Override
	public void editM(RegisterVO m) {
		this.adminRegisterDao.editM(m);		
	}

	@Override
	public void delM(String id) {
		this.adminRegisterDao.delM(id);
		
	}

	@Override
	public int getListCount(PageVO p) {
		return this.adminRegisterDao.getListCount(p);
	}

	@Override
	public List<RegisterVO> getRegisterList(PageVO p) {
		return this.adminRegisterDao.getMemberList(p);
	}

	@Override
	public RegisterVO getMem(String id) {
		return this.adminRegisterDao.getMem(id);
	}
}

	
