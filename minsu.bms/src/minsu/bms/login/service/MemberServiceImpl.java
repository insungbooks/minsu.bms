package minsu.bms.login.service;

import java.util.List;

import minsu.bms.login.dao.LoginDao;
import minsu.bms.login.domain.User;
import minsu.bms.paging.domain.Page;

public class MemberServiceImpl implements MemberService{
	private LoginDao loginDao;
	
	public MemberServiceImpl(LoginDao loginDao) {
		this.loginDao = loginDao;
	}
	
	public List<User> memberListPage(Page page){
		return loginDao.userListPage(page);
	}

}
