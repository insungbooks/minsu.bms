<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.basket.service.BasketService"%>
<%@ page import="minsu.bms.basket.service.BasketServiceImpl"%>
<%@ page import="minsu.bms.config.Configuration"%>
<%@ page import="minsu.bms.basket.dao.BasketDao"%>
<%@ page import="minsu.bms.basket.dao.BasketDaoImpl"%>
<%@ page import="minsu.bms.basket.dao.mapper.BasketMapper"%>
<%@ page import="minsu.bms.basket.domain.Basket"%>
<%@ page import="minsu.bms.bookmanagement.service.BookService"%>
<%@ page import="minsu.bms.bookmanagement.service.BookServiceImpl"%>
<%@ page import="minsu.bms.bookmanagement.dao.BookDao"%>
<%@ page import="minsu.bms.bookmanagement.dao.BookDaoImpl"%>
<%@ page import="minsu.bms.bookmanagement.dao.mapper.BookMapper"%>
<%@ page import="minsu.bms.bookmanagement.domain.Book"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<%
	BasketMapper basketMapper = Configuration.getMapper(BasketMapper.class);
	BasketDao basketDao = new BasketDaoImpl(basketMapper);
	BasketService basketService = new BasketServiceImpl(basketDao);
	BookMapper bookMapper = Configuration.getMapper(BookMapper.class);
	BookDao bookDao = new BookDaoImpl(bookMapper);
	BookService bookService = new BookServiceImpl(bookDao);
	
	String id = (String)session.getAttribute("login");//아이디
	
	if(request.getParameterValues("bookCode") != null) {
		String[] bookCodes = request.getParameterValues("bookCode");
		for(String bookCode:bookCodes) {
			Book book = bookService.findBook(bookCode);
			Basket basket=new Basket();
			basket.setBookCode(bookCode);
			basket.setBookCount(1);
			basket.setBookName(book.getBookName());
			basket.setBookPrice(book.getBookPrice());
			basket.setUserId(id);
			basketService.plusBasket(basket);
		}
	}else if(request.getParameter("bookCode") != null) {
		String addCode = request.getParameter("bookCode");//책코드
		Book book = bookService.findBook(addCode);
		int bookCount=1;
		if(request.getParameter("bookNum")!=null){
			bookCount = Integer.parseInt(request.getParameter("bookNum"));
		}//수량
		
		Basket basket=new Basket();
		basket.setBookCode(addCode);
		basket.setBookCount(bookCount);
		basket.setBookName(book.getBookName());
		basket.setBookPrice(book.getBookPrice());
		basket.setUserId(id);
		basketService.plusBasket(basket);
	}
%>
 	<jsp:forward page="BasketProc.jsp"/>