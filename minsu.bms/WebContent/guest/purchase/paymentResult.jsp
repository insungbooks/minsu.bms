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

<%@ page import="minsu.bms.delivery.service.DeliveryService"%>
<%@ page import="minsu.bms.delivery.service.DeliveryServiceImpl"%>
<%@ page import="minsu.bms.delivery.dao.DeliveryDao"%>
<%@ page import="minsu.bms.delivery.dao.DeliveryDaoImpl"%>
<%@ page import="minsu.bms.delivery.dao.mapper.DeliveryMapper"%>
<%@ page import="minsu.bms.delivery.domain.Delivery"%>
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
	DeliveryMapper deliveryMapper = Configuration.getMapper(DeliveryMapper.class);
	DeliveryDao deliveryDao = new DeliveryDaoImpl(deliveryMapper);
	DeliveryService deliveryService = new DeliveryServiceImpl(deliveryDao);
	
	String address= request.getParameter("address1")+request.getParameter("address2");//도착지
	int bookNum= Integer.parseInt(request.getParameter("bookNum"));//수량
	String payType=request.getParameter("payType");//결제방법
	String id=(String)session.getAttribute("login");//아이디
	String bookCode=request.getParameter("bookCode");//책코드
	String recipient= request.getParameter("recipient");//보내는사람
	String sender= request.getParameter("sender");//받는사람
	String phoneNum= request.getParameter("number1")+request.getParameter("number2")+request.getParameter("number3");//핸드폰번호
	String message= request.getParameter("message");//배송메세지
	int bookPrice = Integer.parseInt(request.getParameter("bookPrice"));//결제금액
	
	
	Purchase purchase= new Purchase();//주문생성
	purchase.setBookCode(bookCode);
	purchase.setOrderCount(bookNum);
	purchase.setUserId(id);
	purchase.setDestination(address);
	purchase.setPayOption(payType);
	purchase.setPayAmount(bookPrice);
	
	purchaseService.addPurchase(purchase);
	
	Delivery delivery=new Delivery();
	delivery.setDeliveryNow("배송전");
	delivery.setAddress(address);
	delivery.setMessage(message);
	delivery.setPhoneNum(phoneNum);
	delivery.setRecipient(recipient);
	delivery.setSender(sender);
	
	deliveryService.addDelivery(delivery);
	
	
%><jsp:include page="../mypage/orderListProc.jsp"/>