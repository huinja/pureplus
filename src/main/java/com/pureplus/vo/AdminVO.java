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
@Table(name="admin") //bbs테이블 명 지정
@EqualsAndHashCode(of="admin_id")
public class AdminVO {
	@Id //기본키 컬럼(구분키,식별키로 활용)
	private String admin_id;//관리자 아이디
	private String admin_pwd;//관리자 비번
	private String admin_name;
	
}
