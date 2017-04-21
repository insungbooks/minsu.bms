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
	
	//검색된 도서 목록을 얻는다.
	//return : 도서 목록
	//Param : 검색 옵션, 검색어
	public List<SearchResult> listSearchResult(String searchOption, String searchText, String orderOption){
		return searchDao.searchBooks(searchOption, searchText, orderOption);
	}
	
	//도서 상세정보
	//return : 도서 정보
	//Param : 도서 코드
	public SearchResult bookInfo(String bookCode){
		return searchDao.getBook(bookCode);
	}
}
