package com.pureplus.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pureplus.vo.OrderVO;
import com.pureplus.vo.PageVO;

@Repository
public class OrderDAOImpl implements OrderDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private OrderRepository orderRepo;
	
	@Override
	public void insertOrder(OrderVO order) {
		this.orderRepo.save(order);
		
	}

	@Override
	public List<OrderVO> getDonateMemberList(PageVO p) {
		return this.sqlSession.selectList("do_list",p);
	}

}
