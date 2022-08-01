package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.UserVO;

public class UserDAO {

	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public UserVO selectId(String id) {
		UserVO vo = sqlSession.selectOne("c.getUserById", id);
		return vo;
	}

	public UserVO selectEmail(String email) {
		UserVO vo = sqlSession.selectOne("c.getUserByEmail", email);
		return vo;
	}

	public UserVO selectTel(String tel) {
		UserVO vo = sqlSession.selectOne("c.getUserByTel", tel);
		return vo;
	}

	public int insert(UserVO vo) {
		int res = sqlSession.insert("c.createUser", vo);
		return res;
	}

	public UserVO checkLogin(UserVO vo) {
		UserVO res = sqlSession.selectOne("c.checkLogin", vo);
		return res;
	}

	public List<UserVO> loginList() {
		List<UserVO> list = sqlSession.selectList("c.user_list");
		return list;
	}

	public List<UserVO> selectList() {
		List<UserVO> list = sqlSession.selectList("c.user_list");
		return list;
	}

}
