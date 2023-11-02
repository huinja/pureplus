package com.pureplus.dao;

import com.pureplus.vo.RegisterVO;

public interface RegisterDAO {

	void insertRegister(RegisterVO m);

	RegisterVO loginCheck(String login_id);

	RegisterVO idCheck(String id);

	void updateRegister(RegisterVO m);

	RegisterVO getRegister(String id);
	
	RegisterVO pwdMember(RegisterVO m);

	void updatePwd(RegisterVO m);
	
	void delMem(RegisterVO dm);



	
}
