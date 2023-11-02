package com.pureplus.vo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@Entity //엔티티빈
@Table(name="donate_order") //bbs테이블 명 지정
@EqualsAndHashCode(of="merchant_uid")
public class OrderVO {
	private String imp_uid;
	private String id;
	
	@Id
	private String merchant_uid;
	private int paid_amount;
	private String apply_num;
	private String buyer_email;
	private String buyer_name;
	private String buyer_tel;
	private String buyer_addr;
	private String buyer_postcode;
	private int total_price;

}

