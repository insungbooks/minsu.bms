package minsu.bms.query.service;

import java.util.List;

import minsu.bms.bookmanagement.dao.BookDao;
import minsu.bms.bookmanagement.domain.Book;
import minsu.bms.query.dao.QueryDao;
import minsu.bms.query.domain.Query;

public class QueryServiceImpl implements QueryService{
	private QueryDao queryDao;
	
	public QueryServiceImpl(QueryDao queryDao) {
		this.queryDao = queryDao;
	}
	
	public List<Query> queryList(){
		return queryDao.queryList();
	}
	public Query findQuery(int boardNum){
		return queryDao.getQuery(boardNum);
	}
	public boolean modifyQuery(Query query){
		return queryDao.updateQuery(query)>0;
	}
	

}
