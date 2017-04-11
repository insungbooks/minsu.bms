package minsu.bms.query.dao.mapper;

import java.util.List;

import minsu.bms.query.domain.Query;

public interface QueryMapper {
	List<Query> queryList();
	Query getQueryNum(int boardNum);
	List<Query> getQueryId(String userId);
	int updateQuery(Query query);
	int addQuery(Query query);
	int delQuery(int boardNum);
}
