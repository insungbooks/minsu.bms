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
	
	/* String bookCode =  request.getParameter("bookCode");
	String bookName =  request.getParameter("bookName");
	String writer =	   request.getParameter("writer");
	String company =   request.getParameter("company");
	String publiDate = request.getParameter("publiDate");
	String bookPrices = request.getParameter("bookPrice");
	int bookPrice = Integer.parseInt(bookPrices);
	String country =   request.getParameter("country");
	String kind = 	   request.getParameter("kind"); */
	
	//Book addBook = new Book(bookCode,bookName,bookPrice,writer,company,publiDate,country,kind);
	Book addBooks = new Book("1","이인석",2500,"이인석","솔데스크","2016-05-06","국내","문학");
	System.out.println(addBooks);
	bookService.addBook(addBooks);
	
%>
