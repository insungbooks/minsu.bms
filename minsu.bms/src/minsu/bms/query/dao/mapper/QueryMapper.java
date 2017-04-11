package minsu.bms.query.dao.mapper;

import java.util.List;

import minsu.bms.query.domain.Query;

public interface QueryMapper {
	List<Query> queryList();
	Query getQuery(int boardNum);
	int updateQuery(Query query);
}
