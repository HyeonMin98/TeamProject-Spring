package com.korea.cgv;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.UserDAO;
import vo.UserVO;

@Controller
public class SignUpController {

	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;

	@Autowired
	UserDAO user_dao;

	private static final Logger logger = LoggerFactory.getLogger(SignUpController.class);

	private static final String VIEW_PATH = "/WEB-INF/views/main/";

	public void setUser_dao(UserDAO user_dao) {
		this.user_dao = user_dao;
	}

	// 회원 추가하기 폼으로 이동
	@RequestMapping("/user_list.do")
	public String selectList(UserVO vo) {
		// selectList 조회 받고 바인딩 -> 회원가입창으로 포워딩 -> 그중에서 db에 저장되어있는 id를 추출해서 -> input태그에
		// 적은 아이디와 비교

		return VIEW_PATH + "signup.jsp";
	}
	
	//로그인 폼으로 이동
	@RequestMapping("/login_form.do")
	public String selectList2() {

		return VIEW_PATH + "login.jsp";
	}
	

	@RequestMapping("/join.do")
	public String join(UserVO vo) {
		int res = user_dao.insert(vo);

		return VIEW_PATH + "main_page.jsp";
	}

	// 아이디 조회
	@RequestMapping("/checkid.do")
	@ResponseBody
	public String selectOne(UserVO vo, String id) {
		UserVO res = user_dao.selectId(id);

		request.setAttribute("vo", vo);

		String result = "no";

		if (res != null && !"".equals(res.getId())) {
			result = "yes";
		}

		return result;
	}

	// 이메일조회
	@RequestMapping("/checkemail.do")
	@ResponseBody
	public String selectEmail(UserVO vo, String email) {
		UserVO res = user_dao.selectEmail(email);

		request.setAttribute("vo", vo);

		String result = "no";
		if (res != null && !"".equals(res.getEmail())) {
			result = "yes";
		}
		return result;
	}

	// 연락처조회
	@RequestMapping("/checktel.do")
	@ResponseBody
	public String selectTel(UserVO vo, String tel) {
		UserVO res = user_dao.selectTel(tel);
		request.setAttribute("vo", vo);

		String result = "no";
		if (res != null && !"".equals(res.getTel())) {
			result = "yes";
		}
		return result;
	}
	
	//로그인
	@RequestMapping("/login.do")
	@ResponseBody
	public String checkId(UserVO vo, HttpServletRequest response) throws IOException{
		logger.debug(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> " + vo);
		UserVO res = user_dao.checkLogin(vo);
		
		String param = "";
		String resultStr = "";
		
		//vo가 null인 경우 id자체가 db에 존재하지 않는다는 의미
		if(res==null) {
			param="no_id";
			/*
			 * resultStr = String.format("[{'param':'%s'}]", param);
			 * response.getWriter().print(resultStr);
			 */
			//return res;
		}else if(!res.getPwd().equals(vo.getPwd())) {
			param="no_pwd";
			
			//return res;
		}else {		
		session.setMaxInactiveInterval(3600);
		session.setAttribute("res", res);
		param="clear";
		
		}
		return param;
	}
	
	//로그아웃
	@RequestMapping("/logout.do")
	public String service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//static 객체를 만들어도 이미 만들어진 객체랑 주소를 공유한다.
		HttpSession session = request.getSession();
		session.removeAttribute("res");
		
		return VIEW_PATH + "login.jsp";
	}
	
}
