package minsu.bms.login.service;

import minsu.bms.login.dao.LoginDao;
import minsu.bms.login.domain.User;

public class FindServiceImpl implements FindService {
	private LoginDao loginDao;

	public FindServiceImpl(LoginDao logindao) {
		this.loginDao = logindao;
	}

	public User findUserId(String name, String myNum){
		User user = loginDao.getUserId(name, myNum); 
		return user;
	}

	public User findUserPw(String userId, String name, String myNum){
		User user = loginDao.getUserPw(userId,name, myNum); 
		return user;
	}
	public String FindIdCheck(String name, String myNum) {
		User user = loginDao.getUserId(name, myNum); 
										 
		if(user != null) {               
			return user.getUserId();
		}else {
			return null;
		}
	}
}
