package minsu.bms.login.dao;

import java.util.List;

import minsu.bms.login.domain.User;

public interface LoginDao {
	User getUser(String id);  //아이디 값과 같은 유저객체를 찾음
	int addUser(User user);
	int updateUser(User user);
	List<User> userList();
	int delUser(User user);
}
