<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.search.service.SearchService"%>
<%@ page import="minsu.bms.search.service.SearchServiceImpl"%>
<%@ page import="minsu.bms.search.domain.SearchResult"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	SearchService searchService=new SearchServiceImpl();
	
	String bookCode=request.getParameter("bookCode");
	SearchResult searchResult=searchService.bookInfo(bookCode);
	
	request.setAttribute("searchResult", searchResult);
%>
	<jsp:forward page="productInfo.jsp?bookCode=<%= searchResult.getBookCode() %>"/>