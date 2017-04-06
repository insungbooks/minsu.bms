package minsu.bms.login.service;

public interface LoginService {
	boolean loginCheck(String id, String pw); //로그인체크 메서드 (id 와 pw를 파라미터로 받음)
}