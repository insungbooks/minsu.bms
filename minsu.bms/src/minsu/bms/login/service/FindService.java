package minsu.bms.login.service;

import minsu.bms.login.domain.User;

public interface FindService {
	String FindIdCheck(String name, String myNum);
	User findUserId(String name, String myNum);
	User findUserPw(String userId, String name, String myNum);
}
