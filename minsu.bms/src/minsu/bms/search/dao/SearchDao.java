package minsu.bms.search.dao;

import java.util.List;

import minsu.bms.search.domain.SearchResult;

public interface SearchDao {
	//도서 검색
	List<SearchResult> searchBooks(String searchOption, String searchText);
}
