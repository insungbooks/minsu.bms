<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="minsu.bms.config.Configuration"%>
<%@ page import="minsu.bms.query.dao.mapper.QueryMapper" %>
<%@ page import="minsu.bms.query.dao.QueryDao" %>
<%@ page import="minsu.bms.query.dao.QueryDaoImpl" %>
<%@ page import="minsu.bms.query.domain.Query" %>
<%@ page import="minsu.bms.query.service.QueryService" %>
<%@ page import="minsu.bms.query.service.QueryServiceImpl" %>
<!DOCTYPE html>
<%
QueryMapper queryMapper = Configuration.getMapper(QueryMapper.class);
QueryDao queryDao = new QueryDaoImpl(queryMapper);
QueryService  queryService = new QueryServiceImpl(queryDao);

String answer= request.getParameter("answer");
int boardNum= Integer.parseInt(request.getParameter("boardNum"));

if(boardNum!=0&&answer!=null&&!answer.equals("")){
	Query queryAnswer = queryService.findQueryNum(boardNum);
	queryAnswer.setAnswer(answer);
	queryAnswer.setAnswerState("답변완료");
	queryService.modifyQueryAnswer(queryAnswer);
	
%>
<jsp:include page="queryListProc.jsp"/>
<%}%>

