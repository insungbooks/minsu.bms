package minsu.bms.query.service;

import java.util.List;
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
	public Query findQueryNum(int boardNum){
		return queryDao.getQueryNum(boardNum);
	}
	public List<Query> findQueryId(String userId){
		List<Query> query = (List<Query>)queryDao.getQueryId(userId);
			return query;
	}
	public boolean modifyQuery(Query query){
		return queryDao.updateQuery(query)>0;
	}
	public boolean addQuery(Query query){
		return queryDao.addQuery(query)>0;
	}
	public boolean deleteQuery(int boardNum){
		return queryDao.delQuery(boardNum)>0;
	}

}
