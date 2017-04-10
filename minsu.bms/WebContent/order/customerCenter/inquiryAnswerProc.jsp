<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<%@ page import="minsu.bms.config.Configuration"%>
<%@ page import="minsu.bms.inquiryBoard.dao.mapper.InquiryAnswerMapper" %>
<%@ page import="minsu.bms.inquiryBoard.dao.InquiryAnswerDao" %>
<%@ page import="minsu.bms.inquiryBoard.dao.InquiryAnswerDaoImpl" %>
<%@ page import="minsu.bms.inquiryBoard.domain.Inquiry" %>
<%@ page import="minsu.bms.inquiryBoard.service.InquiryAnswerService" %>
<%@ page import="minsu.bms.inquiryBoard.service.InquiryAnswerServiceImpl" %>
<%
InquiryAnswerMapper inquiryAnswerMapper = Configuration.getMapper(InquiryAnswerMapper.class);
InquiryAnswerDao inquiryAnswerDao = new InquiryAnswerDaoImpl(inquiryAnswerMapper);
InquiryAnswerService inquiryAnswerService = new InquiryAnswerServiceImpl(inquiryAnswerDao);

//String inquiryAnswer = request.getParameter("inquiryAnswer");

//Inquiry updateInquiry = new Inquiry(inquiryAnswer);

List<Inquiry> answers = inquiryAnswerService.inquiryList();
request.setAttribute("answers", answers);



%>
<jsp:forward page="inquiryAnswerList.jsp"/>