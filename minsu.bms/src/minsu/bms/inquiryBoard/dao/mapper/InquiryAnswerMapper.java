package minsu.bms.inquiryBoard.dao.mapper;

import java.util.List;

import minsu.bms.bookmanagement.domain.Book;
import minsu.bms.inquiryBoard.domain.Inquiry;

public interface InquiryAnswerMapper {
	List<Inquiry> inquiryList();
	Inquiry getInquiry(String boardNum);
	int updateinquiry(Inquiry inquiry);
}
