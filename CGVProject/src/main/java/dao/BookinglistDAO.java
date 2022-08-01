package dao;

import org.apache.ibatis.session.SqlSession;

import vo.BookinglistVO;

public class BookinglistDAO {
	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public int insert(BookinglistVO vo) {
		int res = sqlSession.insert("m.bookinglist", vo);
		return res;
	}
}
