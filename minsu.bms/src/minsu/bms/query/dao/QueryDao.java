package minsu.bms.query.dao;

import java.util.List;

import minsu.bms.query.domain.Query;

public interface QueryDao {
	List<Query> queryList();
	Query getQuery(String boardNum);
	int updateQuery(Query query);
}
