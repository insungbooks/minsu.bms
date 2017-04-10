package minsu.bms.inquiryBoard.service;

import java.util.List;

import minsu.bms.bookmanagement.domain.Book;
import minsu.bms.inquiryBoard.domain.Inquiry;


public interface InquiryAnswerService {
	List<Inquiry> inquiryList();
	Inquiry findInquiry(String boardNum);
	boolean modifyInquiry(Inquiry inquiry);
}
