package minsu.bms.search.dao;

import java.util.List;

import minsu.bms.config.Configuration;
import minsu.bms.search.dao.mapper.SearchMapper;
import minsu.bms.search.domain.SearchResult;

public class SearchDaoImpl implements SearchDao{
	SearchMapper searchMapper;
	
	public SearchDaoImpl(){
		this.searchMapper=Configuration.getMapper(SearchMapper.class);;
	}
	
	public List<SearchResult> searchBooks(){
		return searchMapper.searchBooks();
	}
}
