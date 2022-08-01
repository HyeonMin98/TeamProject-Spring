package com.korea.cgv;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.BookinglistDAO;
import dao.LocDAO;
import dao.MovieDAO;
import vo.BookinglistVO;
import vo.LocVO;
import vo.MovieVO;

@Controller
public class MovieController {

	@Autowired
	HttpServletRequest request;

	@Autowired
	HttpSession session;

	@Autowired
	MovieDAO movie_dao;

	@Autowired
	LocDAO loc_dao;

	@Autowired
	BookinglistDAO bookinglist_dao;

	private static final String VIEW_PATH = "/WEB-INF/views/main/";

	public void setLoc_dao(LocDAO loc_dao) {
		this.loc_dao = loc_dao;
	}

	public void setMovie_dao(MovieDAO movie_dao) {
		this.movie_dao = movie_dao;
	}

	@RequestMapping(value = { "/", "/main.do" })
	public String main() {

		return VIEW_PATH + "main_page.jsp";
	}

	// 예매 시스템
	@RequestMapping("/ticketing.do")
	public String cgv(Model model) {
		List<MovieVO> list = movie_dao.selectList();
		model.addAttribute("list", list);
		List<MovieVO> list_asc = movie_dao.selectList_가나다순();
		model.addAttribute("list_asc", list_asc);
		List<LocVO> list_loc = loc_dao.selectList();
		model.addAttribute("list_loc", list_loc);
		List<LocVO> list_loc_distinct = loc_dao.selectList_distinct();
		model.addAttribute("list_loc_distinct", list_loc_distinct);

		return VIEW_PATH + "ticketing.jsp";
	}

	// 결제 시스템
	@RequestMapping("/payment.do")
	public String payment(Model model) {
		List<MovieVO> list = movie_dao.selectList();
		model.addAttribute("list", list);
		List<MovieVO> list_asc = movie_dao.selectList_가나다순();
		model.addAttribute("list_asc", list_asc);
		List<LocVO> list_loc = loc_dao.selectList();
		model.addAttribute("list_loc", list_loc);
		List<LocVO> list_loc_distinct = loc_dao.selectList_distinct();
		model.addAttribute("list_loc_distinct", list_loc_distinct);

		return VIEW_PATH + "payment.jsp";
	}

	// 결제하기 버튼 누를시 넘어가는 부분
	@RequestMapping("/insert.do")
	public String insert(BookinglistVO vo, HttpServletRequest request) {

		int res = bookinglist_dao.insert(vo);
		return "redirect:main.do";
	}

	// 무비차트로 이동
	@RequestMapping("/moviechart.do")
	public String movie_chart() {

		return VIEW_PATH + "movie_chart.jsp";
	}

	// 스토어로 이동
	@RequestMapping("/store.do")
	public String store() {

		return VIEW_PATH + "store.jsp";
	}

}
