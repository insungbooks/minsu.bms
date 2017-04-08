package minsu.bms.search.service;

import java.util.List;

import minsu.bms.search.dao.SearchDao;
import minsu.bms.search.dao.SearchDaoImpl;
import minsu.bms.search.domain.SearchResult;

public class SearchServiceImpl implements SearchService{
	private SearchDao searchDao;
	
	public SearchServiceImpl(){
		this.searchDao=new SearchDaoImpl();
	}
	
	public List<SearchResult> listSearchResult(){
		return searchDao.searchBooks();
	}
}
