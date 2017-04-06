package minsu.bms.login.dao.mapper;

import minsu.bms.login.domain.User;

public interface LoginMapper {
	User getUser(String id); //아이디 값과 같은 유저객체를 찾음 이게 실행되면 loginMapper.xml 파일에 있는 메서드 실행
}
