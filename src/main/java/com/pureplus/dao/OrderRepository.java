package com.pureplus.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pureplus.vo.OrderVO;

public interface OrderRepository extends JpaRepository<OrderVO, String>{

}
