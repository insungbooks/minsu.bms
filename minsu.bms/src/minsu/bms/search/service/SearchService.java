package minsu.bms.search.service;

import java.util.List;

import minsu.bms.search.domain.SearchResult;

public interface SearchService {
	//도서 목록
	List<SearchResult> listSearchResult(String searchOption, String searchText);
}
