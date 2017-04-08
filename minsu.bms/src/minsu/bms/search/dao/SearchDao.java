package minsu.bms.search.dao;

import java.util.List;

import minsu.bms.search.domain.SearchResult;

public interface SearchDao {
	List<SearchResult> searchBooks();
}
