package minsu.bms.inquiryBoard.service;

import java.util.List;

import minsu.bms.bookmanagement.dao.BookDao;
import minsu.bms.bookmanagement.domain.Book;
import minsu.bms.inquiryBoard.dao.InquiryAnswerDao;
import minsu.bms.inquiryBoard.domain.Inquiry;

public class InquiryAnswerServiceImpl implements InquiryAnswerService{
	private InquiryAnswerDao inquiryAnswerDao;
	
	public InquiryAnswerServiceImpl(InquiryAnswerDao inquiryAnswerDao) {
		this.inquiryAnswerDao = inquiryAnswerDao;
	}
	
	public List<Inquiry> inquiryList(){
		return inquiryAnswerDao.inquiryList();
	}
	public Inquiry findInquiry(String boardNum){
		return inquiryAnswerDao.getInquiry(boardNum);
	}
	public boolean modifyInquiry(Inquiry inquiry){
		return inquiryAnswerDao.updateInquiry(inquiry)>0;
	}
	

}
