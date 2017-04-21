package minsu.bms.review.service;

import java.util.List;

import minsu.bms.review.domain.Review;

public interface ReviewService {
	//리뷰 목록
	List<Review> listReviews(String bookCode);
}
