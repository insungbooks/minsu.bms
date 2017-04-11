package minsu.bms.query.service;

import java.util.List;

import minsu.bms.query.domain.Query;

public interface QueryService {
	List<Query> queryList();
	Query findQueryNum(int boardNum);
	List<Query> findQueryId(String userId);
	boolean modifyQuery(Query query);
	boolean addQuery(Query query);
	boolean deleteQuery(int boardNum);
	
}
