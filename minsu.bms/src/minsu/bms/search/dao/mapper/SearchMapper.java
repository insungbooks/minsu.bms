package minsu.bms.search.dao.mapper;

import java.util.List;
import minsu.bms.search.domain.SearchResult;

public interface SearchMapper {
	List<SearchResult> searchBooks();
}
