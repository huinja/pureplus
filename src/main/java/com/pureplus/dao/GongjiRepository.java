package com.pureplus.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.pureplus.vo.GongjiVO;

@Repository
public interface GongjiRepository extends JpaRepository<GongjiVO, Integer>{

}
