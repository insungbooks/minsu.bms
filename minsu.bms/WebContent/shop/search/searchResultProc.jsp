<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.search.service.SearchService"%>
<%@ page import="minsu.bms.search.service.SearchServiceImpl"%>
<%@ page import="minsu.bms.search.domain.SearchResult"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	SearchService searchService=new SearchServiceImpl();
	String searchText = request.getParameter("searchText");
	String searchOption = request.getParameter("searchOption");
	
	List<SearchResult> searchResults = null;
	searchResults = searchService.listSearchResult(searchOption, searchText);
	request.setAttribute("searchResults", searchResults);
%>
	<jsp:forward page="searchResult.jsp"/>