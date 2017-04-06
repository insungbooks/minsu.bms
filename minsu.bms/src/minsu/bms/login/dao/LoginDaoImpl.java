package minsu.bms.login.dao;

import minsu.bms.login.dao.mapper.LoginMapper;
import minsu.bms.login.domain.User;

public class LoginDaoImpl implements LoginDao {
	private LoginMapper loginMapper;
	
	public LoginDaoImpl(){}
	
	public LoginDaoImpl(LoginMapper loginMapper){
		this.loginMapper = loginMapper;
	}
	
	public User getUser(String id) { 
		return loginMapper.getUser(id);
	}
}
