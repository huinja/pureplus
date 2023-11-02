package com.pureplus.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.pureplus.dao.RegisterRepository;
import com.pureplus.service.OrderService;
import com.pureplus.vo.OrderVO;
import com.pureplus.vo.RegisterVO;

@RestController//비동기식 ajax json데이터를 처리해주는 Rest Api
public class OrderController {
	
	@Autowired
	private RegisterRepository registerRepo;
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="/order_ok/{id}",method=RequestMethod.POST)
	public ResponseEntity<String> order_ok(OrderVO order, @PathVariable("id") String id) {
		/*
		 * System.out.println(order.getImp_uid());
		 * System.out.println(order.getMerchant_uid());
		 * System.out.println(order.getPaid_amount());
		 * System.out.println(order.getApply_num());
		 * System.out.println(order.getBuyer_email());
		 * System.out.println(order.getBuyer_name());
		 * System.out.println(order.getBuyer_tel());
		 * System.out.println(order.getBuyer_addr());
		 * System.out.println(order.getBuyer_postcode());
		 * System.out.println(order.getTotal_price());
		 * 
		 * System.out.println("세션아이디:"+ id);
		 */
		ResponseEntity<String> entity=null;
    	
    	try {
    		Optional<RegisterVO> rvo=registerRepo.findById(id);
    		
   		    RegisterVO register;
   	       
   	       if(rvo.isPresent()) {//아이디에 해당하는 회원정보가 있다면 참
   	    	   register = rvo.get();//MemberVO 엔티티 타입 객체를 구함
   				
   				/*
   				 * System.out.println(register.getMail());
   				 * System.out.println(register.getPhonenum());
   				 * System.out.println(register.getName());
   				 */
   	    	   order.setBuyer_email(register.getMail());
   	    	   order.setBuyer_tel(register.getPhonenum());
   	    	   order.setBuyer_name(register.getName());
   	    	   
   	    	  this.orderService.insertOrder(order);
   	    	  
   	    	entity=new ResponseEntity<>("SUCCESS",HttpStatus.OK);
    		//댓글 저장 성공시 'SUCCESS'문자와 200 정상상태 코드가 반환
   	       }else {//회원정보가 없는 경우
   	    	   register=null;
   	       }
   		
    	}catch(Exception e) {
    		e.printStackTrace();
    		entity=new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    	}
    	return entity;
		
	}
	
}
