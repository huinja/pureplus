package com.pureplus.vo;





import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;



@Setter
@Getter
@ToString
@Entity //엔티티빈
@Table(name="register") //bbs테이블 명 지정

@EqualsAndHashCode(of="id")
public class RegisterVO {
	@Id
	private String id;

	
	private String password;
	private String name;
	private String phonenum;
	private String mail;

	private int r_state;//가입회원이면 1 탈퇴회원이면 2
	
	@CreationTimestamp
	private Timestamp regdate;
}
