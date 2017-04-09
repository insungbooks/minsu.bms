package minsu.bms.search.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import minsu.bms.search.domain.SearchResult;

public interface SearchMapper {
	//도서 검색
	List<SearchResult> searchBooks(@Param("searchOption")String searchOption, @Param("searchText")String searchText);
}
