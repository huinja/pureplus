package com.pureplus.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pureplus.vo.AdminVO;



public interface AdminRepository extends JpaRepository<AdminVO, String> {

	

}
