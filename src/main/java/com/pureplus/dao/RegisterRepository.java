package com.pureplus.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.pureplus.vo.RegisterVO;






public interface RegisterRepository extends JpaRepository<RegisterVO, String>{
	
	@Query("select m from RegisterVO m where m.id=?1")
	RegisterVO pwdFind(String id); //아이디와 회원이름을 기준으로 회원정보 검색

	@Modifying //@Query 애노테이션은 select문 가능하지만 @Modifying을 사용해서 DML(insert,update,
	//delete)문 작업 처리가 가능하다.
	@Query("update RegisterVO m set m.password=?1 where m.id=?2") //?1은 첫번째로 전달되어
	//지는 인자값, ?2는 두번째로 전달되어지는 인자값, JPQL문을 사용함. JPQL문은 실제 테이블명 대신 엔티티빈 클
	//래스명을 사용하고,실제 테이블 컬럼명 대신 빈클래스 속성명인 변수명을 사용한다.
	void updatePwd(String password, String id);//아이디를 기준으로 암호화 된 임시비번을 수정
	
	@Query("select m from RegisterVO m where m.id=?1 and m.r_state=1")
	RegisterVO loginCheck(String login_id);//아이디와 가입회원 1인 경우만 로그인 인증 처리

	@Modifying //@Query 애노테이션은 select문 가능하지만 @Modifying을 사용해서 DML(insert,update,
	//delete)문 작업 처리가 가능하다.
	@Query("update RegisterVO m set m.password=?2, m.name=?3, m.phonenum=?4, m.mail=?5 where  m.id=?1")
	void updateRegister(String id, String password,String name, String phonenum, String mail);	
	
}
