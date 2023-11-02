package com.pureplus.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pureplus.dao.RegisterDAO;
import com.pureplus.vo.RegisterVO;

@Service
public class RegisterServiceImpl implements RegisterService {
	
	@Autowired
	private RegisterDAO registerDao;

	@Override
	public void insertRegister(RegisterVO m) {
		this.registerDao.insertRegister(m);
		
	}

	@Override
	public RegisterVO loginCheck(String login_id) {
		return this.registerDao.loginCheck(login_id);
	}

	@Override
	public RegisterVO idCheck(String id) {
		return this.registerDao.idCheck(id);
	}

	@Override
	public RegisterVO getRegister(String id) {
		return this.registerDao.getRegister(id);
	}

	@Override
	public void updateRegister(RegisterVO m) {
		this.registerDao.updateRegister(m);
		
	}

	@Override
	public RegisterVO pwdMember(RegisterVO m) {
		
		return this.registerDao.pwdMember(m);
	}

	@Override
	public void updatePwd(RegisterVO m) {
		this.registerDao.updatePwd(m);
		
	}

	@Override
	public void delMem(RegisterVO dm) {
		this.registerDao.delMem(dm);
		
	}
	


}
