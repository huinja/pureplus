package com.pureplus.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.pureplus.vo.RegisterVO;

public interface AdminRegisterRepository extends JpaRepository<RegisterVO, String>{

	
	@Modifying 
	@Query("update RegisterVO r set r.password=?1, r.name=?2, r.phonenum=?3, r.mail=?4,r.r_state=?5 where r.id=?6")
	void adminMember_Update(String password,String name, String phonenum, String mail, int r_state, String id);

}
