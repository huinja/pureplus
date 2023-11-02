package com.pureplus.service;

import com.pureplus.vo.RegisterVO;

public interface RegisterService {

	void insertRegister(RegisterVO m);
	RegisterVO loginCheck(String login_id);
	RegisterVO idCheck(String id);
	RegisterVO getRegister(String id);
	void updateRegister(RegisterVO m);
	RegisterVO pwdMember(RegisterVO m);
	void updatePwd(RegisterVO m);
	void delMem(RegisterVO dm);



}
