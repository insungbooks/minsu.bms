package minsu.bms.query.dao;

import java.util.List;

import minsu.bms.query.dao.mapper.QueryMapper;
import minsu.bms.query.domain.Query;

public class QueryDaoImpl implements QueryDao{
	QueryMapper queryMapper;
	
	public QueryDaoImpl(QueryMapper queryMapper){
		this.queryMapper = queryMapper;
	}
	
	public List<Query> queryList(){
		return queryMapper.queryList();
	}
	public Query getQuery(String boardNum){
		return queryMapper.getQuery(boardNum);
	}

	public int updateQuery(Query query){
		return queryMapper.updateQuery(query);
	}
}
