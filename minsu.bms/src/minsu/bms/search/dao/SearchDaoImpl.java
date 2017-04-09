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
	
	//도서를 검색한다.
	//return : 도서 목록
	//Param : 검색옵션, 검색어
	public List<SearchResult> searchBooks(String searchOption, String searchText){
		return searchMapper.searchBooks(searchOption, searchText);
	}
}
