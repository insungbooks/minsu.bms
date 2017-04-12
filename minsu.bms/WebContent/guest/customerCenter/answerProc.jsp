<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<%@ page import="minsu.bms.config.Configuration"%>
<%@ page import="minsu.bms.query.dao.mapper.QueryMapper" %>
<%@ page import="minsu.bms.query.dao.QueryDao" %>
<%@ page import="minsu.bms.query.dao.QueryDaoImpl" %>
<%@ page import="minsu.bms.query.domain.Query" %>
<%@ page import="minsu.bms.query.service.QueryService" %>
<%@ page import="minsu.bms.query.service.QueryServiceImpl" %>
<%
QueryMapper queryMapper = Configuration.getMapper(QueryMapper.class);
QueryDao queryDao = new QueryDaoImpl(queryMapper);
QueryService queryService = new QueryServiceImpl(queryDao);

int boardNum = Integer.parseInt(request.getParameter("boardNum"));
Query query = queryService.findQueryNum(boardNum);
request.setAttribute("query", query);
if(query.getAnswerState()=="답변완료"||query.getAnswerState().equals("답변완료")){
%>
<jsp:forward page="answer.jsp"/>
<%}else if(query.getAnswerState()=="답변전"||query.getAnswerState().equals("답변전")){%>
<jsp:forward page="queryUpdate.jsp"/>
<%}else{ %>
<jsp:forward page="a.jsp"/>
<%} %>


