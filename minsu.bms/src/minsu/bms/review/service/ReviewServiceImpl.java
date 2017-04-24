package minsu.bms.review.service;

import java.util.List;

import minsu.bms.review.dao.ReviewDao;
import minsu.bms.review.dao.ReviewDaoImpl;
import minsu.bms.review.domain.Review;

public class ReviewServiceImpl implements ReviewService{
	private ReviewDao reviewDao;
	
	public ReviewServiceImpl(){
		this.reviewDao=new ReviewDaoImpl();
	}
	
	//리뷰 목록
	//return : 리뷰 배열
	//Param : 도서 코드
	public List<Review> listReviews(String bookCode){
		return reviewDao.getReviews(bookCode);
	}
	
	public int insertReview(Review review){
		return reviewDao.addReview(review);
	}
}
