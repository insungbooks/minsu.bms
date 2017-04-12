package minsu.bms.login.dao;

import java.util.List;

import minsu.bms.login.dao.mapper.LoginMapper;
import minsu.bms.login.domain.User;

public class LoginDaoImpl implements LoginDao {
	
	private String userId;
	private String password;  
	private String name;      
	private int age;      
	private String gender;
	private String myNum;
	private String email;     
	private String phoneNum; 
	private String address;
	private LoginMapper loginMapper;
	
	public LoginDaoImpl(){}
	
	public LoginDaoImpl(LoginMapper loginMapper){
		this.loginMapper = loginMapper;
	}
	
	public User getUser(String id) { 
		return loginMapper.getUser(id);
	}
	public int addUser(User user){
		return loginMapper.addUser(user);
	}
	public int updateUser(User user){
		return loginMapper.updateUser(user);
	}
	public List<User> userList(){
		return loginMapper.userList();
	}
	public int delUser(User user){
		return loginMapper.delUser(user);
	}
}
