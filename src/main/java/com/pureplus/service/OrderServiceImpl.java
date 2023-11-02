package com.pureplus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pureplus.dao.OrderDAO;
import com.pureplus.vo.OrderVO;
import com.pureplus.vo.PageVO;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderDAO orderDao;

	@Override
	public void insertOrder(OrderVO order) {
		this.orderDao.insertOrder(order);
		
	}

	@Override
	public List<OrderVO> getDonateList(PageVO p) {
		return this.orderDao.getDonateMemberList(p);
	}
}
