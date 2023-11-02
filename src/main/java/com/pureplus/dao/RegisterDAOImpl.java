package com.pureplus.dao;

import java.util.Optional;

import javax.transaction.Transactional;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pureplus.vo.RegisterVO;

@Repository
public class RegisterDAOImpl implements RegisterDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@Autowired
	private RegisterRepository registerRepo;
	
	@Override
	public void insertRegister(RegisterVO m) {
		this.sqlSession.insert("r_in",m);
	}

	@Override
	public RegisterVO loginCheck(String login_id) {
		System.out.println(" \n ==============> 아이디와 mem_state=1 인 경우만 "
				+"로그인 인증처리(JPA)");
		    
		    RegisterVO m = this.registerRepo.loginCheck(login_id);
		    return m;
	}

	@Override
	public RegisterVO idCheck(String id) {
		System.out.println(" \n ===============> 아이디 중복 검색(JPA)");
	       Optional<RegisterVO> rm=this.registerRepo.findById(id);
	       RegisterVO register;
	       
	       if(rm.isPresent()) {//아이디에 해당하는 회원정보가 있다면 참
	    	   register = rm.get();//MemberVO 엔티티 타입 객체를 구함
	       }else {//회원정보가 없는 경우
	    	   register=null;
	       }
	       return register;
	}

	@Override
	public RegisterVO getRegister(String id) {
		System.out.println(" \n =================> 아이디에 대한 회원정보 보기(회원수정폼에 활용"
				+": 이 경우는 반드시 로그인 된 상태에서 하기 때문에 null이 반환될 일이 없다. 내장메서드 "
				+" getReferenceById()를 사용");
		
		RegisterVO em=this.registerRepo.getReferenceById(id);
		return em;
	}
	
	@Transactional
	@Override
	public void updateRegister(RegisterVO m) {
		System.out.println(" \n ==================> 회원정보 수정완료(jpa)");
		   this.registerRepo.updateRegister(m.getId(),m.getPassword(),m.getName(),m.getPhonenum(),m.getMail());
		
	}
	
	@Override
	public RegisterVO pwdMember(RegisterVO m) {
		
		/* return this.sqlSession.selectOne("p_find", m); */
		
		System.out.println(" \n ==============> 비번검색(JPA)");
		RegisterVO pm = this.registerRepo.pwdFind(m.getId());
		return pm;
	}
	
	@Transactional
	@Override
	public void updatePwd(RegisterVO m) {
		/* this.sqlSession.update("p_edit", m); */
		System.out.println(" \n =============> 암호화 된 임시비번으로 수정(JPA)");
		this.registerRepo.updatePwd(m.getPassword(), m.getId());
		
	}
	
	@Override
	public void delMem(RegisterVO dm) {
		//this.sqlSession.update("mDel_ok", dm);
		
		 System.out.println(" \n =================> JPA로 회원탈퇴");
		   Optional<RegisterVO> mResult = this.registerRepo.findById(dm.getId());
		   /* java 8에서 Optional을 사용하는 이유는 null 처리를 해결하기 위한 Wrapper클래스이다.
		    * null이면 NullPointerException 예외처리를 하기 위해서 try~catch문등을 사용해야 한다. 이런
		    * 부분을 해결해 준다.
		    */
		   RegisterVO member;
		   if(mResult.isPresent()) {//아이디에 해당하는 회원정보가 있다면 참
			   member=mResult.get();//MemberVO 엔티티 타입 객체를 구함
			   
			   //member.setMem_delcont(dm.getMem_delcont());//탈퇴사유 저장
			   member.setR_state(2);//탈퇴회원 구분값 2 저장
			   //member.setMem_deldate(new Timestamp(System.currentTimeMillis()));//탈퇴날짜 
			   //저장
			   
			   this.registerRepo.save(member);
		
		  }
	}




}
