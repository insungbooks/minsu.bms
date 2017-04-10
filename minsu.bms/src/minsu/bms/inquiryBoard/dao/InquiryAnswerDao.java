package minsu.bms.inquiryBoard.dao;

import java.util.List;

import minsu.bms.inquiryBoard.domain.Inquiry;

public interface InquiryAnswerDao {
	List<Inquiry> inquiryList();
	Inquiry getInquiry(String boardNum);
	int updateInquiry(Inquiry inquiry);
}
