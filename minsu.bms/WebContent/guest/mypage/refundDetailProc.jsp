<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.refund.service.RefundService"%>
<%@ page import="minsu.bms.refund.service.RefundServiceImpl"%>
<%@ page import="minsu.bms.refund.dao.RefundDao"%>
<%@ page import="minsu.bms.refund.dao.RefundDaoImpl"%>
<%@ page import="minsu.bms.refund.dao.mapper.RefundMapper"%>
<%@ page import="minsu.bms.refund.domain.Refund"%>
<%@ page import="minsu.bms.config.Configuration"%>
<%@ page import="java.util.*" %>
<%@ page import="minsu.bms.purchase.service.PurchaseService"%>
<%@ page import="minsu.bms.purchase.service.PurchaseServiceImpl"%>
<%@ page import="minsu.bms.purchase.dao.PurchaseDao"%>
<%@ page import="minsu.bms.purchase.dao.PurchaseDaoImpl"%>
<%@ page import="minsu.bms.purchase.dao.mapper.PurchaseMapper"%>
<%@ page import="minsu.bms.purchase.domain.Purchase"%>

<!DOCTYPE html>
<%
	RefundMapper refundMapper = Configuration.getMapper(RefundMapper.class);
	RefundDao refundDao = new RefundDaoImpl(refundMapper);
	RefundService refundService = new RefundServiceImpl(refundDao);
	PurchaseMapper purchaseMapper = Configuration.getMapper(PurchaseMapper.class);
	PurchaseDao purchaseDao = new PurchaseDaoImpl(purchaseMapper);
	PurchaseService purchaseService = new PurchaseServiceImpl(purchaseDao);
	
	String bookName=request.getParameter("bookName");
	int refundAmount=Integer.parseInt(request.getParameter("payAmount"));
	String reason= request.getParameter("reason");
	String cancelType =request.getParameter("cancelType");
	int orderNum= Integer.parseInt(request.getParameter("orderNum"));
	
	Refund refund =new Refund();
	refund.setCancelType(cancelType);
	refund.setRefundReason(reason);
	refund.setRefundAmount(refundAmount);
	refund.setBookName(bookName);
	refund.setOrderNum(orderNum);
	refundService.addRefund(refund);

	List<Refund> refundList=(List<Refund>)refundService.listRefunds();
	request.setAttribute("orderNum", orderNum);
	request.setAttribute("refundList", refundList);
	%>
	<jsp:include page="refundResultProc.jsp"/>