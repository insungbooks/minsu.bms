package minsu.bms.login.service;

import java.util.List;

import minsu.bms.login.domain.User;

public interface FindService {
	List<User> userList();
	User findIdCheck(String name, String myNum);
	User findUserPw(String userId, String name, String myNum);
}
