package com.pureplus.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pureplus.pwdconv.PwdChange;
import com.pureplus.service.AdminRegisterService;
import com.pureplus.service.AdminService;
import com.pureplus.service.EmailService;
import com.pureplus.service.GongjiService;
import com.pureplus.service.OrderService;
import com.pureplus.service.RegisterService;
import com.pureplus.vo.AdminVO;
import com.pureplus.vo.GongjiVO;
import com.pureplus.vo.MailVO;
import com.pureplus.vo.OrderVO;
import com.pureplus.vo.PageVO;
import com.pureplus.vo.RegisterVO;

@Controller
public class PureController {

	@Autowired
	private RegisterService registerService;

	@Autowired
	private GongjiService gongjiService;

	@Autowired
	private AdminService adminService;

	@Autowired
	private AdminRegisterService adminRegisterService;
	
	@Autowired
	private OrderService orderService;

	private final EmailService emailService;// 이메일 서비스

	public PureController(EmailService emailService) {
		this.emailService = emailService;
	}// 생성자를 통한 의존성 주입

	@RequestMapping("/pureplusmain")
	public ModelAndView test() {
		ModelAndView mo = new ModelAndView();
		mo.setViewName("pureplusmain");

		return mo;
	}// 메인

	@RequestMapping("/pureplusseb")
	public ModelAndView test1() {
		ModelAndView mo = new ModelAndView();
		mo.setViewName("pureplusseb");

		return mo;
	}// 서브

	@RequestMapping("/purepluscloths")
	public ModelAndView test2() {
		ModelAndView mo = new ModelAndView();
		mo.setViewName("purepluscloths");

		return mo;
	}// 의류

	@RequestMapping("/purepluseat")
	public ModelAndView test3() {
		ModelAndView mo = new ModelAndView();
		mo.setViewName("purepluseat");

		return mo;
	}// 식량

	@RequestMapping("/pureplushome")
	public ModelAndView test4() {
		ModelAndView mo = new ModelAndView();
		mo.setViewName("pureplushome");

		return mo;
	}// 거주지

	@RequestMapping("/pureplusmoney")
	public ModelAndView test5() {
		ModelAndView mo = new ModelAndView();
		mo.setViewName("pureplusmoney");

		return mo;
	}// 모금

	@RequestMapping("/pureplushealth")
	public ModelAndView test6() {
		ModelAndView mo = new ModelAndView();
		mo.setViewName("pureplushealth");

		return mo;
	}// 건강

	@RequestMapping("/purepluswater")
	public ModelAndView test7() {
		ModelAndView mo = new ModelAndView();
		mo.setViewName("purepluswater");

		return mo;
	}// 식수

	@RequestMapping("/purepluslogin1")
	public ModelAndView test8() {
		ModelAndView mo = new ModelAndView();
		mo.setViewName("purepluslogin1");

		return mo;
	}// 로그인1

	@RequestMapping("/purepluslogin3")
	public ModelAndView test10() {
		ModelAndView mo = new ModelAndView();
		mo.setViewName("purepluslogin3");

		return mo;
	}// 로그인3

	@RequestMapping("/purepluspayment")
	public ModelAndView test11() {
		ModelAndView mo = new ModelAndView();
		mo.setViewName("purepluspayment");

		return mo;
	}


	//	@RequestMapping("/purepluslogin2")
	//	public ModelAndView test9() {
	//		ModelAndView mo = new ModelAndView();
	//		mo.setViewName("purepluslogin2");
	//		
	//		return mo;
	//	}//로그인2

	@RequestMapping("/purepluslogin2")
	public ModelAndView register() {
		String[] phone = { "010", "011", "019" };
		String[] email = { "gmail.com", "naver.com", "daum.net", "nate.com", "직접입력" };

		ModelAndView mo = new ModelAndView();
		mo.addObject("phone", phone);
		mo.addObject("email", email);
		mo.setViewName("purepluslogin2");// 뷰페이지 경로 설정
		return mo;
	}// member_join()

	@RequestMapping("/purepluslogin2_ok")
	public ModelAndView member_join_ok(RegisterVO m,HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		/*
		 * MemberVO m이라고 하면 member_Join.jsp의 네임피라미터 이름과 빈클래스의 변수명이 같으면 m에 입력한 회원정보가 저장되어
		 * 있다.
		 */
		m.setPassword(PwdChange.getPassWordToXEMD5String(m.getPassword()));// 비번암호화
		this.registerService.insertRegister(m);// 회원저장
	
		out.println("<script>;");
		out.println("alert('회원 가입이 되었습니다.');");
		out.println("location='purepluslogin1';");
		out.println("</script>");
		
		return null;

		//return new ModelAndView("redirect:/purepluslogin1");// 생성자 인자값에 redirect:/가
		// 들어가면 원하는 매핑주소로 이동시킴.
	}// member_join_ok()

	@GetMapping("/purepluslogin1")
	public ModelAndView pureplusologin2() {
		return new ModelAndView("purepluslogin1");// 생성자 인자값으로 뷰리졸브 경로를 설정=>
		// /WEB-INF/views/member/member_Login.jsp
	}// member_Login()

	@PostMapping("/pureplusologin1_ok")
	public ModelAndView pureplusologin2_ok(String id, String password, HttpServletResponse response,
			HttpSession session) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		RegisterVO m = this.registerService.loginCheck(id);
		/*
		 * 문제) 아이디와 mem_state=1 가입회원 인 경우만 로그인 인증 처리를 한다. member.xml에서 설정할 유일 아이디명은
		 * m_loginCheck이다. 단위테스트인 개발자 테스트까지 마무리 한다.
		 */

		if (m == null) {
			out.println("<script>");
			out.println("alert('가입 안된 회원입니다!');");
			out.println("history.back();");
			out.println("</script>");
		} else {
			if (!m.getPassword().equals(PwdChange.getPassWordToXEMD5String(password))) {
				out.println("<script>");
				out.println("alert('비번이 다릅니다!');");
				out.println("history.go(-1);");
				out.println("</script>");
			} else {
				session.setAttribute("id", id);// 세션 id 키이름에 아이디 저장
				return new ModelAndView("redirect:/pureplusmain");

			}
		}
		return null;
	}// member_login_ok()

	@PostMapping("/register_logout")
	public ModelAndView register_logout(HttpServletResponse response, HttpSession session) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		session.invalidate();// 세션 만료(로그아웃)

		out.println("<script>");
		out.println("alert('로그아웃 되었습니다!');");
		out.println("location='purepluslogin1';");
		out.println("</script>");

		return null;
	}// member_logout()

	@PostMapping("/register_idcheck")
	public ModelAndView member_idcheck(String id, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=UTF-8");// 웹브라우저에 출력되는 문자와 태그
		// ,언어코딩 타입을 설정
		PrintWriter out = response.getWriter();

		RegisterVO db_id = this.registerService.idCheck(id);// 오라클로 부터 아이디 중복검색
		/*
		 * 문제) member.xml 매퍼 mybatis xml파일을 만드시고 유일아이디명을 m_idcheck로 해서 아이디를 기준으로
		 * member테이블로 부터 모든 필드를 검색해서 아이디 중복검색되게 만들어 보자. 매퍼 네임스페이스 명은 Member로 한다.
		 */

		int re = -1;// 중복아이디가 없는 경우 반환값
		if (db_id != null) {// 중복아이디가 있는 경우
			re = 1;
		}

		out.println(re);// 값 반환 기능

		return null;
	}// member_idcheck()

	@GetMapping("/pureplusupdate")
	public ModelAndView update(HttpServletResponse response, HttpSession session) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		String id = (String) session.getAttribute("id");// 세션 아이디를 구함

		if (isLogin(session, response)) {// ==true가 생략됨
//			String[] phone = { "010", "011", "019" };
//			String[] email = { "gmail.com", "naver.com", "daum.net", "nate.com", "직접입력" };
			RegisterVO em = this.registerService.getRegister(id);// 아이디에 해당하는 회원정보를 읽어옴
			/*
			 * 문제) 아이디를 기준으로 member테이블로 부터 회원정보를 검색한다. member.xml에서 설정할 유일 아이디명은
			 * member_Info로 한다. 개발자 테스트인 단위테스트까지 해보자.
			 */

			ModelAndView m = new ModelAndView("/pureplusupdate");
			m.addObject("em", em);
//			m.addObject("phone", phone);
//			m.addObject("email", email);
			
			return m;
		}
		return null;
	}// member_edit()

	// 정보수정 완료
	@RequestMapping("/pureplusupdate_ok")
	public ModelAndView member_update_ok(RegisterVO m, HttpServletResponse response, HttpSession session)
			throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String id = (String) session.getAttribute("id");

		if (isLogin(session, response)) {
			m.setId(id);
			m.setPassword(PwdChange.getPassWordToXEMD5String(m.getPassword()));// 정식 비번
			// 암호화

			this.registerService.updateRegister(m);// 회원정보 수정

			out.println("<script>");
			out.println("alert('정보 수정했습니다!');");
			out.println("location='pureplusmain';");
			out.println("</script>");
		}
		return null;
	}// member_update_ok()

	// 비번찾기 공지창
	@RequestMapping("/pwd_find")
	public ModelAndView pwd_find() {
		return new ModelAndView("/pwd_find");// 생성자 인자값으로 뷰페이지 경로 설정 =>
		// /WEB-INF/views/member/pwd_find.jsp
	}// pwd_find()

	// 비번찾기 결과
	@RequestMapping("/pwd_find_ok")
	public ModelAndView pwd_find_ok(@RequestParam("pwd_id") String pwd_id, String pwd_name,
			HttpServletResponse response, RegisterVO m, MailVO mailVo) throws Exception {
		/*
		 * @RequestParam("pwd_id")는 request.getParameter("pwd_id")와 같은 역할을 한다. *
		 */
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		m.setId(pwd_id);
		RegisterVO pm = this.registerService.pwdMember(m);
		/*
		 * 문제)아이디와 회원이름을 기준으로 회원정보를 오라클로 부터 검색하는 pwdMember()메서드를 작성해 본다. member.xml에
		 * 설정하는 유일아이디명은 p_find이다.
		 */

		if (pm == null) {
			out.println("<script>");
			out.println("alert('회원으로 검색되지 않습니다!\\n 올바른 회원정보를 입력하세요!');");
			out.println("history.go(-1);");
			out.println("</script>");
		} else {
			// System.out.println("오라클로 부터 검색된 회원:"+pm.getMem_name());

			Random r = new Random();
			int pwd_random = r.nextInt(100000);// 0이상 십만 미만 사이의 정수 숫자 난수가 발생
			String ran_pwd = Integer.toString(pwd_random);// 정수숫자를 문자열로 변경

			mailVo.setAddress(pm.getMail());// 받는 멜 주소 (오라클로 부터 메일 아이디@멜주소)
			mailVo.setTitle("임시비번 발송입니다");// 멜 제목
			mailVo.setContent("발송되는 임시비번 : " + ran_pwd + "입니다");// 멜 내용
			this.emailService.sendSimpleMessage(mailVo);// 메일 보내기

			m.setPassword(PwdChange.getPassWordToXEMD5String(ran_pwd));// 임시 비번 암호화

			this.registerService.updatePwd(m);// 암호화 된 임시비번으로 수정

			ModelAndView fm = new ModelAndView("/pwd_find_ok");
			fm.addObject("pwd_ran", ran_pwd);
			return fm;
		}
		return null;
	}// pwd_find_ok()

	// 회원탈퇴 폼
	@RequestMapping("/member_del")
	public ModelAndView member_del(HttpServletResponse response, HttpSession session) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String id = (String) session.getAttribute("id");// 세션 아이디를 구함.

		if (isLogin(session, response)) {
			RegisterVO dm = this.registerService.getRegister(id);

			ModelAndView m = new ModelAndView("/member_del");
			m.addObject("dm", dm);
			return m;
		}
		return null;
	}// member_del()

	// 회원탈퇴 완료
	@RequestMapping("/member_del_ok")
	public ModelAndView member_del_ok(HttpServletResponse response, HttpSession session, String password)
			throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String id = (String) session.getAttribute("id");

		if (isLogin(session, response)) {
			password = PwdChange.getPassWordToXEMD5String(password);// 비번 암호화
			RegisterVO db_pwd = this.registerService.getRegister(id);

			if (!db_pwd.getPassword().equals(password)) {
				out.println("<script>");
				out.println("alert('비번이 다릅니다!');");
				out.println("history.back();");
				out.println("</script>");
			} else {
				RegisterVO dm = new RegisterVO();
				dm.setId(id);

				this.registerService.delMem(dm);// 회원탈퇴

				session.invalidate();// 세션만료=>로그아웃

				out.println("<script>");
				out.println("alert('회원탈퇴 했습니다!');");
				out.println("location='pureplusmain';");
				out.println("</script>");
			}
		}
		return null;
	}// member_del_ok()



	@RequestMapping("/gongji_list")
	public String gongji_list(Model gm,	HttpServletRequest request,HttpServletResponse response, HttpSession session,
	PageVO p) throws Exception{
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out=response.getWriter();
				String id=(String)session.getAttribute("id");
				//관리자 세션 아이디를 구함

				if(id == null) {
					out.println("<script>");
					out.println("alert('다시 로그인 하세요!');");
					out.println("location='admin_index';");
					out.println("</script>");
				}else {
					int page=1;//쪽번호
					int limit=7;//한페이지에 보여지는 목록개수
					if(request.getParameter("page") != null) {
						page=Integer.parseInt(request.getParameter("page"));			
					}
					String find_name=request.getParameter("find_name");//검색어
					String find_field=request.getParameter("find_field");//검색
					//필드
					p.setFind_field(find_field);
					p.setFind_name("%"+find_name+"%");
					//%는 오라클 와일드 카드 문자로서 하나이상의 임의의 문자와
					//매핑 대응

					int listcount=this.gongjiService.getRowCount(p);
					//전체 레코드 개수 또는 검색전후 레코드 개수
					//System.out.println("총 게시물수:"+listcount+"개");

					p.setStartrow((page-1)*7+1);//시작행번호
					p.setEndrow(p.getStartrow()+limit-1);//끝행번호

					List<GongjiVO> glist=
							this.gongjiService.getList(p);
					//검색 전후 회원목록

					//총페이지수
					int maxpage=(int)((double)listcount/limit+0.95);
					//현재 페이지에 보여질 시작페이지 수(1,11,21)
					int startpage=(((int)((double)page/10+0.9))-1)*10+1;
					//현재 페이지에 보여줄 마지막 페이지 수(10,20,30)
					int endpage=maxpage;
					if(endpage > startpage+10-1) endpage=startpage+10-1;

					gm.addAttribute("glist",glist);
					//gm 키이름에 값 저장
					gm.addAttribute("page",page);
					gm.addAttribute("startpage",startpage);
					gm.addAttribute("endpage",endpage);
					gm.addAttribute("maxpage",maxpage);
					gm.addAttribute("listcount",listcount);	
					gm.addAttribute("find_field",find_field);
					gm.addAttribute("find_name", find_name);

					return "gongji_list";
					//뷰페이지 폴더경로와 파일명 지정	


				}	
				return null;
				
			}//gongji_list()

			//공지내용보기+조회수 증가
			@RequestMapping("/gongji_cont")
			public ModelAndView gongji_cont(
					@RequestParam("gongji_no") int gongji_no)
			{
				GongjiVO g=this.gongjiService.getGCont(gongji_no);
				String g_cont=g.getGongji_cont().replace("\n","<br/>");

				ModelAndView gm=new ModelAndView("gongji_cont");
				gm.addObject("g",g);
				gm.addObject("g_cont",g_cont);
				return gm;
			}//gongji_cont()

			// 반복적인 코드 줄이기
			public static boolean isLogin(HttpSession session, HttpServletResponse response) throws Exception {
				PrintWriter out = response.getWriter();
				String id = (String) session.getAttribute("id");

				if (id == null) {
					out.println("<script>");
					out.println("alert('다시 로그인 하세요!');");
					out.println("location='purepluslogin1';");
					out.println("</script>");

					return false;
				}
				return true;
			}// isLogin()

			// 관리자 로그인 페이지
			@GetMapping("/admin_login")
			public ModelAndView admin_login() {
				return new ModelAndView("/admin_Login");// 생성자 인자값으로 뷰페이지 경로 설정=>
				// /WEB-INF/views/admin/admin_Login.jsp
			}// admin_login()

			// 관리자 정보저장 + 관리자 비번 암호화 + 관리자 로그인 인증
			@PostMapping("/admin_login_ok") // post로 접근하는 매핑주소 처리
			public String admin_login_ok(AdminVO ab, HttpServletResponse response, HttpServletRequest request,
					HttpSession session) throws Exception {
				response.setContentType("text/html;charset=UTF-8");// 웹브라우저 출력되는 한글을 안깨지게
				// 하고,자바스크립트나 HTML코드 등을 웹브라우저에 잘 적용하게 한다.
				PrintWriter out = response.getWriter();// 출력스트림 객체 생성

				ab.setAdmin_pwd(PwdChange.getPassWordToXEMD5String(ab.getAdmin_pwd()));
				// 관리자 비번 암호화

				/* ab.setAdmin_no(1); */

				/*
				 * ab.setAdmin_name("관리자"); //관리자 이름 저장
				 * this.adminService.insertAdmin(ab);//관리자정보 저장
				 */

				AdminVO admin_info = this.adminService.adminLogin(ab.getAdmin_id());
				// 관리자 아이디로 로그인 인증


				if(admin_info == null) { out.println("<script>");
				out.println("alert('관리자 정보가 없습니다!');"); out.println("history.back();");
				out.println("</script>"); }else {
					if(!admin_info.getAdmin_pwd().equals(ab.getAdmin_pwd())) {
						out.println("<script>"); out.println("alert('관리자 비번이 다릅니다!');");
						out.println("history.go(-1);"); out.println("</script>"); }else {
							session.setAttribute("admin_id",ab.getAdmin_id());//admin_id 관리자 세션 키이름에
							//관리자 아이디 저장
							session.setAttribute("admin_name",admin_info.getAdmin_name());//관리자이름을admin_name 세션 키이름에 저장

							return "redirect:/admin_index";//관리자 메인으로 이동 
						} 

				}

				return null;
			}// admin_login_ok()

			// 관리자 로그인 인증 후 메인 페이지로 이동
			@RequestMapping("/admin_index")
			public ModelAndView admin_index(HttpServletResponse response, HttpSession session) throws Exception {
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();

				String admin_id = (String) session.getAttribute("admin_id");// 관리자 세션 아이디를 구함

				if (admin_id == null) {
					out.println("<script>");
					out.println("alert('관리자 아이디로 로그인 하세요!');");
					out.println("location='admin_login';");
					out.println("</script>");
				} else {
					ModelAndView am = new ModelAndView();
					am.setViewName("/admin_main");// 뷰페이지 경로 설정
					return am;
				}
				return null;
			}// admin_index()

			// 관리자 로그아웃
			@RequestMapping("/admin_logout")
			public String admin_logout(HttpServletResponse response, HttpSession session) throws Exception {
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();

				session.invalidate();// 세션 만료 => 로그아웃

				out.println("<script>");
				out.println("alert('관리자 로그아웃 되었습니다!');");
				out.println("location='admin_login';");
				out.println("</script>");

				return null;
			}// admin_logout()

			//관리자 회원목록
			@RequestMapping("/admin_member_list")
			public String admin_member_list(Model listM,
					HttpServletResponse response,
					HttpServletRequest request,
					PageVO p)
							throws Exception{
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out=response.getWriter();
				HttpSession session=request.getSession();
				String admin_id=(String)session.getAttribute("admin_id");
				//관리자 세션 아이디를 구함

				if(admin_id == null) {
					out.println("<script>");
					out.println("alert('다시 로그인 하세요!');");
					out.println("location='admin_index';");
					out.println("</script>");
				}else {
					int page=1;//쪽번호
					int limit=7;//한페이지에 보여지는 목록개수
					if(request.getParameter("page") != null) {
						page=Integer.parseInt(request.getParameter("page"));			
					}
					String find_name=request.getParameter("find_name");//검색어
					String find_field=request.getParameter("find_field");//검색
					//필드
					p.setFind_field(find_field);
					p.setFind_name("%"+find_name+"%");
					//%는 오라클 와일드 카드 문자로서 하나이상의 임의의 문자와
					//매핑 대응

					int listcount=this.adminRegisterService.getListCount(p);
					//전체 레코드 개수 또는 검색전후 레코드 개수
					//System.out.println("총 게시물수:"+listcount+"개");

					p.setStartrow((page-1)*7+1);//시작행번호
					p.setEndrow(p.getStartrow()+limit-1);//끝행번호

					List<RegisterVO> rlist=
							this.adminRegisterService.getRegisterList(p);
					//검색 전후 회원목록

					//총페이지수
					int maxpage=(int)((double)listcount/limit+0.95);
					//현재 페이지에 보여질 시작페이지 수(1,11,21)
					int startpage=(((int)((double)page/10+0.9))-1)*10+1;
					//현재 페이지에 보여줄 마지막 페이지 수(10,20,30)
					int endpage=maxpage;
					if(endpage > startpage+10-1) endpage=startpage+10-1;

					listM.addAttribute("rlist",rlist);
					//rlist 키이름에 값 저장
					listM.addAttribute("page",page);
					listM.addAttribute("startpage",startpage);
					listM.addAttribute("endpage",endpage);
					listM.addAttribute("maxpage",maxpage);
					listM.addAttribute("listcount",listcount);	
					listM.addAttribute("find_field",find_field);
					listM.addAttribute("find_name", find_name);

					return "admin_member_list";
					//뷰페이지 폴더경로와 파일명 지정	
				}
				return null;
			}//admin_member_list()

			//회원 상세정보+수정폼
			@RequestMapping("/admin_member_info")
			public String admin_member_info(
					@RequestParam("id") String id,
					@RequestParam("state") String state,
					HttpServletRequest request,
					HttpServletResponse response,
					Model am) throws Exception{
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out=response.getWriter();
				HttpSession session=request.getSession();
				String admin_id=(String)session.getAttribute("admin_id");

				if(admin_id == null) {
					out.println("<script>");
					out.println("alert('다시 로그인 하세요!');");
					out.println("location='admin_index';");
					out.println("</script>");
				}else {
					int page=1;
					if(request.getParameter("page") != null) {
						page=Integer.parseInt(request.getParameter("page"));    		
					}
					RegisterVO r=this.adminRegisterService.getMem(id);//회원정보
					//를 디비로 부터 가져온다.
					String del_cont=null;
					/*
					 * if(m.getMem_delcont() != null) {//탈퇴 사유가 있는 경우
					 * del_cont=m.getMem_delcont().replace("\n","<br/>"); //textarea 영역에서 엔터키 친부분을
					 * 다음줄로 줄바꿈 }
					 */

					am.addAttribute("r",r);
					am.addAttribute("page",page);

					if(state.equals("info")) {//상세정보 보기
						return "admin_member_info";
					}else if(state.equals("edit")) {//수정폼
						return "admin_member_edit";
					}
				}
				return null;
			}//admin_member_info()

			//관리자 회원관리 정보수정
			@RequestMapping("/admin_member_edit")
			public String admin_member_edit(
					RegisterVO r,HttpServletRequest request,
					HttpServletResponse response) throws Exception{
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out=response.getWriter();
				HttpSession session=request.getSession();
				String admin_id=(String)session.getAttribute("admin_id");
				if(admin_id == null) {
					out.println("<script>");
					out.println("alert('다시 로그인 하세요!');");
					out.println("location='admin_index';");
					out.println("</script>");
				}else {
					r.setPassword(PwdChange.getPassWordToXEMD5String(
							r.getPassword()));//비번을 암호화
					this.adminRegisterService.editM(r);//회원정보수정
					/*문제풀이) 1.아이디를 기준으로 비번,이름,우편번호,주소,나머지
					 * 주소,멜,폰번호,mem_state,mem_delcont를 수정되게 한다. 	 
					 */
					out.println("<script>");
					out.println("alert('정보 수정했습니다!');");
					out.println("location='admin_member_info?state=edit"
							+"&id="+r.getId()+"';");
					out.println("</script>");
				}
				return null;
			}//admin_member_edit()

			//관리자 회원삭제
			@RequestMapping("/admin_member_del")
			public ModelAndView admin_member_del(
					@RequestParam("id") String id,
					HttpServletResponse response,
					HttpServletRequest request)
							throws Exception{
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out=response.getWriter();
				HttpSession session=request.getSession();
				String admin_id=(String)session.getAttribute("admin_id");
				if(admin_id == null) {
					out.println("<script>");
					out.println("alert('다시 로그인 하세요!');");
					out.println("location='admin_index';");
					out.println("</script>");
				}else {
					int page=1;
					if(request.getParameter("page") != null) {
						page=Integer.parseInt(request.getParameter("page"));    		
					}
					this.adminRegisterService.delM(id);//회원삭제
					/* 문제풀이) 아이디를 기준으로 회원을 delete한다.     	
					 */
					return     	
							new ModelAndView(
									"redirect:/admin_member_list").addObject("page",page); 
					//admin_member_list?page=쪽번호 get방식으로 회원목록으로 이동
				}
				return null;
			}//admin_member_del()
			
			//관리자 회원 기부목록
		      @RequestMapping("/admin_donation_list")
		      public String admin_donation_list(Model listM,
		            HttpServletResponse response,
		            HttpServletRequest request,
		            PageVO p)
		                  throws Exception{
		         response.setContentType("text/html;charset=UTF-8");
		         PrintWriter out=response.getWriter();
		         HttpSession session=request.getSession();
		         String admin_id=(String)session.getAttribute("admin_id");
		         //관리자 세션 아이디를 구함

		         if(admin_id == null) {
		            out.println("<script>");
		            out.println("alert('다시 로그인 하세요!');");
		            out.println("location='admin_index';");
		            out.println("</script>");
		         }else {
		            int page=1;//쪽번호
		            int limit=7;//한페이지에 보여지는 목록개수
		            if(request.getParameter("page") != null) {
		               page=Integer.parseInt(request.getParameter("page"));         
		            }
		            String find_name=request.getParameter("find_name");//검색어
		            String find_field=request.getParameter("find_field");//검색
		            //필드
		            p.setFind_field(find_field);
		            p.setFind_name("%"+find_name+"%");
		            //%는 오라클 와일드 카드 문자로서 하나이상의 임의의 문자와
		            //매핑 대응

		            int listcount=this.adminRegisterService.getListCount(p);
		            //전체 레코드 개수 또는 검색전후 레코드 개수
		            //System.out.println("총 게시물수:"+listcount+"개");

		            p.setStartrow((page-1)*7+1);//시작행번호
		            p.setEndrow(p.getStartrow()+limit-1);//끝행번호

		            List<OrderVO> rlist=
		                  this.orderService.getDonateList(p);
		            //검색 전후 회원목록

		            //총페이지수
		            int maxpage=(int)((double)listcount/limit+0.95);
		            //현재 페이지에 보여질 시작페이지 수(1,11,21)
		            int startpage=(((int)((double)page/10+0.9))-1)*10+1;
		            //현재 페이지에 보여줄 마지막 페이지 수(10,20,30)
		            int endpage=maxpage;
		            if(endpage > startpage+10-1) endpage=startpage+10-1;

		            listM.addAttribute("rlist",rlist);
		            //rlist 키이름에 값 저장
		            listM.addAttribute("page",page);
		            listM.addAttribute("startpage",startpage);
		            listM.addAttribute("endpage",endpage);
		            listM.addAttribute("maxpage",maxpage);
		            listM.addAttribute("listcount",listcount);   
		            listM.addAttribute("find_field",find_field);
		            listM.addAttribute("find_name", find_name);

		            return "admin_donation_list";
		            //뷰페이지 폴더경로와 파일명 지정   
		         }
		         return null;
		      }//admin_donation_list()

}
