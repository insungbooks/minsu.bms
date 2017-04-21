package minsu.bms.review.dao.mapper;

import java.util.List;

import minsu.bms.review.domain.Review;

public interface ReviewMapper {
	//리뷰 가져오기
	//Param : 도서 코드
	//return : 리뷰 배열
	List<Review> getReviews(String bookCode);
}
