package minsu.bms.login.service;

import minsu.bms.login.dao.LoginDao;
import minsu.bms.login.domain.User;

public class PointServiceImpl implements PointService{
	private LoginDao loginDao;

	public PointServiceImpl(LoginDao logindao) {
		this.loginDao = logindao;
	}
	
	public boolean updatePoint(User user){
		return loginDao.updatePoint(user)>0;
	}
}
