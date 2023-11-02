package com.pureplus.service;

import java.util.List;

import com.pureplus.vo.OrderVO;
import com.pureplus.vo.PageVO;

public interface OrderService {

	void insertOrder(OrderVO order);

	List<OrderVO> getDonateList(PageVO p);

}
