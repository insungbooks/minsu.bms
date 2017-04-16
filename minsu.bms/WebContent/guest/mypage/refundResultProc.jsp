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
	
	int orderNum=(int)request.getAttribute("orderNum");

	
	if(request.getAttribute("refundList")!=null){
		List<Refund> refundList=(List<Refund>)request.getAttribute("refundList");
		for(Refund refund : refundList){
			if(refund.getOrderNum()==orderNum){
				
				Purchase purchase = purchaseService.findPurchase(orderNum);
				purchase.setRefundNum(refund.getRefundNum());
				purchaseService.modifyRefund(purchase);
				
			}
		}
	}
	
	
	List<Refund> refundList=(List<Refund>)refundService.listRefunds();
	request.setAttribute("refundList", refundList);
	
	
	%>
	<jsp:include page="refundDetail.jsp"/>