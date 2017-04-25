package minsu.bms.query.dao;

import java.util.List;

import minsu.bms.bookmanagement.domain.Book;
import minsu.bms.paging.domain.Page;
import minsu.bms.query.domain.Query;

public interface QueryDao {
	List<Query> queryList(Page page);
	Query getQueryNum(int boardNum);
	List<Query> getQueryId(String userId);
	int updateQuery(Query query);
	int updateQueryAnswer(Query query);
	int addQuery(Query query);
	public int delQuery(int boardNum);
}
