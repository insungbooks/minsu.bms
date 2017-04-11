package minsu.bms.query.service;

import java.util.List;

import minsu.bms.bookmanagement.domain.Book;
import minsu.bms.query.domain.Query;


public interface QueryService {
	List<Query> queryList();
	Query findQuery(int boardNum);
	boolean modifyQuery(Query query);
}
