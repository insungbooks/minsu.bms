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
<%@ page import="minsu.bms.login.service.LoginService"%>
<%@ page import="minsu.bms.login.service.LoginServiceImpl"%>
<%@ page import="minsu.bms.login.dao.LoginDao"%>
<%@ page import="minsu.bms.login.dao.LoginDaoImpl"%>
<%@ page import="minsu.bms.login.dao.mapper.LoginMapper"%>
<%@ page import="minsu.bms.login.domain.User"%>
<%@ page import="minsu.bms.purchase.service.PurchaseService"%>
<%@ page import="minsu.bms.purchase.service.PurchaseServiceImpl"%>
<%@ page import="minsu.bms.purchase.dao.PurchaseDao"%>
<%@ page import="minsu.bms.purchase.dao.PurchaseDaoImpl"%>
<%@ page import="minsu.bms.purchase.dao.mapper.PurchaseMapper"%>
<%@ page import="minsu.bms.purchase.domain.Purchase"%>
<%@ page import="minsu.bms.basket.service.BasketService"%>
<%@ page import="minsu.bms.basket.service.BasketServiceImpl"%>
<%@ page import="minsu.bms.basket.dao.BasketDao"%>
<%@ page import="minsu.bms.basket.dao.BasketDaoImpl"%>
<%@ page import="minsu.bms.basket.dao.mapper.BasketMapper"%>
<%@ page import="minsu.bms.basket.domain.Basket"%>
<!DOCTYPE html>
<%
	BookMapper bookMapper = Configuration.getMapper(BookMapper.class);
	BookDao bookDao = new BookDaoImpl(bookMapper);
	BookService bookService = new BookServiceImpl(bookDao);
	LoginMapper loginMapper = Configuration.getMapper(LoginMapper.class);
	LoginDao loginDao = new LoginDaoImpl(loginMapper);
	LoginService loginService = new LoginServiceImpl(loginDao); 
	PurchaseMapper purchaseMapper = Configuration.getMapper(PurchaseMapper.class);
	PurchaseDao purchaseDao = new PurchaseDaoImpl(purchaseMapper);
	PurchaseService purchaseService = new PurchaseServiceImpl(purchaseDao);
	BasketMapper basketMapper = Configuration.getMapper(BasketMapper.class);
	BasketDao basketDao = new BasketDaoImpl(basketMapper);
	BasketService basketService = new BasketServiceImpl(basketDao);
	
	
	if(session.getAttribute("login")!=null){
	String id=(String)session.getAttribute("login");
	User user = loginService.findUser(id);
	request.setAttribute("user",user);
	}else{%>
	<jsp:include page="../../shop/login/login.jsp"/>	
<% 	}
	
	request.getParameterValues("basketNum");	
	
	
	
	
	
	boolean TypeCheck=false;
	if(request.getParameterValues("bookCode")!=null){
		String[] bookCodes = request.getParameterValues("bookCode");
		String[] bookNum=request.getParameterValues("bookNum");
		List<Book> bookInfo = null;
		for(String bookCode : bookCodes){
			Book book=bookService.findBook(bookCode);
			bookInfo.add(book);
		}
		request.setAttribute("bookNum", bookNum);
		request.setAttribute("bookInfo", bookInfo);
	}else if(request.getParameter("bookCode")!=null){
		String bookCode = request.getParameter("bookCode");
		String bookNum= request.getParameter("bookNum");
		Book bookInfo = (Book)bookService.findBook(bookCode);
		request.setAttribute("bookNum", bookNum);
		request.setAttribute("bookInfo", bookInfo);
		TypeCheck=true;
	}
	request.setAttribute("TypeCheck", TypeCheck);
	
%>
<jsp:include page="payment.jsp"/>