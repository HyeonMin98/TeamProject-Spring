package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.MovieVO;

public class MovieDAO {

	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<MovieVO> selectList(){
		List<MovieVO> list = sqlSession.selectList("m.movie_list");
		return list;
	}
	
	public List<MovieVO> selectList_가나다순(){
		List<MovieVO> list_asc = sqlSession.selectList("m.movie_list_asc");
		return list_asc;
	}
	
	
	
	
	
	
	
	
}
