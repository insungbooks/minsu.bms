package minsu.bms.inquiryBoard.dao;

import java.util.List;

import minsu.bms.inquiryBoard.dao.mapper.InquiryAnswerMapper;
import minsu.bms.inquiryBoard.domain.Inquiry;

public class InquiryAnswerDaoImpl implements InquiryAnswerDao{
	InquiryAnswerMapper inquiryAnswerMapper;
	
	public InquiryAnswerDaoImpl(InquiryAnswerMapper inquiryAnswerMapper){
		this.inquiryAnswerMapper = inquiryAnswerMapper;
	}
	
	public List<Inquiry> inquiryList(){
		return inquiryAnswerMapper.inquiryList();
	}
	public Inquiry getInquiry(String boardNum){
		return inquiryAnswerMapper.getInquiry(boardNum);
	}

	public int updateInquiry(Inquiry inquiry){
		return inquiryAnswerMapper.updateinquiry(inquiry);
	}
}
