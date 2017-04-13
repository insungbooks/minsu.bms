package minsu.bms.search.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import minsu.bms.search.domain.SearchResult;

public interface SearchMapper {
	//도서 검색
	//Param : 검색옵션, 검색어, 정렬옵션
	//return : 검색된 책 목록
	List<SearchResult> searchBooks(@Param("searchOption")String searchOption, @Param("searchText")String searchText
			);//,@Param("orderOption")String orderOption
	
	//책 1권 가져오기
	//Param : 도서 코드
	//return : 책
	SearchResult getBook(String bookCode);
}
