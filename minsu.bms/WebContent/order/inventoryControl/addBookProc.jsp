<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.bookmanagement.service.BookService"%>
<%@ page import="minsu.bms.bookmanagement.service.BookServiceImpl"%>
<%@ page import="minsu.bms.config.Configuration"%>
<%@ page import="minsu.bms.bookmanagement.dao.BookDao"%>
<%@ page import="minsu.bms.bookmanagement.dao.BookDaoImpl"%>
<%@ page import="minsu.bms.bookmanagement.dao.mapper.BookMapper"%>
<%@ page import="minsu.bms.bookmanagement.domain.Book"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<%
	BookMapper bookMapper = Configuration.getMapper(BookMapper.class);
	BookDao bookDao = new BookDaoImpl(bookMapper);
	BookService bookService = new BookServiceImpl(bookDao);
	
	String choice = request.getParameter("choice");
	String bookCode =  request.getParameter("bookCode");
	String bookName =  request.getParameter("bookName");
	String writer =	   request.getParameter("writer");
	String company =   request.getParameter("company");
	String publiDate = request.getParameter("publiDate");
	int bookPrice = Integer.parseInt(request.getParameter("bookPrice"));
	String country =   request.getParameter("country");
	String kind = 	   request.getParameter("kind");
	int inventory = Integer.parseInt(request.getParameter("inventory"));
	int salesNum   = Integer.parseInt(request.getParameter("salesNum"));
	String writerIntro = request.getParameter("writerIntro");
	String bookIntro = request.getParameter("bookIntro");
	String contents1 = request.getParameter("contents1");
	String contents2 = request.getParameter("contents2");
	String contents3 = request.getParameter("contents3");
	String contents4 = request.getParameter("contents4");
	String companyEval = request.getParameter("companyEval");
	
	Book addBook = new Book(bookCode,bookName,bookPrice,writer,
							company,publiDate,country,kind,inventory,salesNum,writerIntro,
							bookIntro,contents1,contents2,contents3,contents4,companyEval);
	
	if(choice.equals("add")) {
		bookService.addBook(addBook);
	}else {
		bookService.modifyBook(addBook);
	}
%>
	<jsp:include page="listBooksProc.jsp"/>