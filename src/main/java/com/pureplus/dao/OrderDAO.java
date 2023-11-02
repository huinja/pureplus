package com.pureplus.dao;

import java.util.List;

import com.pureplus.vo.OrderVO;
import com.pureplus.vo.PageVO;

public interface OrderDAO {

	void insertOrder(OrderVO order);

	List<OrderVO> getDonateMemberList(PageVO p);

}
