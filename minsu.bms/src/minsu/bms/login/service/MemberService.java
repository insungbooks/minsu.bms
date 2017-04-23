package minsu.bms.login.service;

import java.util.List;

import minsu.bms.login.domain.User;
import minsu.bms.paging.domain.Page;

public interface MemberService {
	List<User> memberListPage(Page page);
}
