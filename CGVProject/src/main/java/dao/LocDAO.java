package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.LocVO;

public class LocDAO {

	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<LocVO> selectList() {
		List<LocVO> list = sqlSession.selectList("l.loc_list");
		return list;
	}

	public List<LocVO> selectList_distinct() {
		List<LocVO> list_distinct = sqlSession.selectList("l.list_loc_distinct");
		return list_distinct;
	}

}
