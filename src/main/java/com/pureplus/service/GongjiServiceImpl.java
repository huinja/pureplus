package com.pureplus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pureplus.dao.GongjiDAO;
import com.pureplus.vo.GongjiVO;
import com.pureplus.vo.PageVO;

@Service
public class GongjiServiceImpl implements GongjiService{

	@Autowired
	private GongjiDAO gongjiDAO;

	@Override
	public List<GongjiVO> getList(PageVO p) {
		return this.gongjiDAO.getList(p);
	}

	//트랜잭션 적용대상
	@Transactional
	@Override
	public GongjiVO getGCont(int gongji_no) {
        this.gongjiDAO.updateHit(gongji_no);//조회수 증가		
		return this.gongjiDAO.getGCont(gongji_no);
	}

	@Override
	public int getRowCount(PageVO p) {
		return this.gongjiDAO.getRowCount(p);
	}

}
