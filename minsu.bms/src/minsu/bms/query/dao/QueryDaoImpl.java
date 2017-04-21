package minsu.bms.query.dao;

import java.util.List;

import minsu.bms.bookmanagement.domain.Book;
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
	public Query getQueryNum(int boardNum){
		return queryMapper.getQueryNum(boardNum);
	}
	public List<Query> getQueryId(String userId){
		return queryMapper.getQueryId(userId);
	}

	public int updateQuery(Query query){
		return queryMapper.updateQuery(query);
	}
	public int updateQueryAnswer(Query query){
		return queryMapper.updateQueryAnswer(query);
	}
	
	public int addQuery(Query query){
		return queryMapper.addQuery(query);
	}
	
	public int delQuery(int boardNum) {
		return queryMapper.delQuery(boardNum);
	}
}
