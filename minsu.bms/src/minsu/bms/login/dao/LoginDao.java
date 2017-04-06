package minsu.bms.login.dao;

import minsu.bms.login.domain.User;

public interface LoginDao {
	User getUser(String id);  //아이디 값과 같은 유저객체를 찾음
}
