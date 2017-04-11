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

	String id=(String)session.getAttribute("login");
	List<Query> querys = (List<Query>)queryService.findQueryId(id);
	request.setAttribute("querys",querys);

%><jsp:forward page="queryList.jsp"/>
