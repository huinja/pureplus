package com.pureplus.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pureplus.vo.PageVO;
import com.pureplus.vo.RegisterVO;


@Repository
public class AdminRegisterDAOImpl implements AdminRegisterDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private AdminRegisterRepository adminRegisterRepo;
	
	@Override
	public int getListCount(PageVO p) {
		return this.sqlSession.selectOne("am_count",p);
	}//검색전후 회원수

	@Override
	public List<RegisterVO> getMemberList(PageVO p) {
		return this.sqlSession.selectList("am_list",p);
	}//검색전후 회원목록
	
	@Transactional
	@Override
	public void editM(RegisterVO r) {
		//System.out.println("메일 도메인 : " + m.getMail());
		//this.sqlSession.update("am_edit", m);

		System.out.println(" \n===============================> JPA로 관리자 회원정보 수정");
		this.adminRegisterRepo.adminMember_Update(r.getPassword(),r.getName(), r.getPhonenum(), r.getMail(), r.getR_state(), r.getId());
	}

	@Override
	public void delM(String id) {
		//this.sqlSession.delete("am_del",mem_id);		
		
				System.out.println(" \n=============================> jpa로 관리자에서 회원 삭제");
				this.adminRegisterRepo.deleteById(id);
	}

	@Override
	public RegisterVO getMem(String id) {
		//return this.sqlSession.selectOne("am_info",mem_id);
		
		System.out.println("  \n ======================> JPA로 관리자 회원관리 상세정보와 수정폼");
		RegisterVO am=this.adminRegisterRepo.getReferenceById(id);//jpa로 아이디에 해당하는 회원을 검색해서 엔티티빈 타입으로 반환
		/* getReferenceById() 내장메서드는 아이디에 해당하는 회원정보가 없는 경우 예외 오류를 발생시킨다. 그러므로 이 예외 오류 처리가 곤란한다. 즉 아이디에 해당하는 회원정보가 
		 * 반드시 있는 경우만 사용하고 없는 경우 즉  NULL인 경우는 예외 오류 처리 문제로 되도록 그런 경우는 사용 자제 하는 것이 좋다.
		 */
		return am;
	}//회원상세정보+수정폼
}
