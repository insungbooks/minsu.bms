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
<!DOCTYPE html>
<%
	BookMapper bookMapper = Configuration.getMapper(BookMapper.class);
	BookDao bookDao = new BookDaoImpl(bookMapper);
	BookService bookService = new BookServiceImpl(bookDao);
	LoginMapper loginMapper = Configuration.getMapper(LoginMapper.class);
	LoginDao loginDao = new LoginDaoImpl(loginMapper);
	LoginService loginService = new LoginServiceImpl(loginDao); 
	
	//if(request.getParameter("paymentSingle")!=null){
	String bookCode = request.getParameter("bookCode");
	String bookNum=request.getParameter("bookNum");
	Book bookInfo = bookService.findBook(bookCode);
	
	if(session.getAttribute("login")!=null){
	String id=(String)session.getAttribute("login");
	User user = loginService.findUser(id);
	request.setAttribute("user",user);
	}else{%>
	<jsp:include page="../../shop/login/loginProc.jsp"/>
	<% }
	request.setAttribute("bookInfo", bookInfo);
	request.setAttribute("bookNum", bookNum);
	//}else{
		//String bookCode = request.getParameter("bookCode");
		//String bookNum=request.getParameter("bookNum");
		//바스켓 리스트 가져오기
		
	//}
	
%>
<jsp:include page="payment.jsp"/>