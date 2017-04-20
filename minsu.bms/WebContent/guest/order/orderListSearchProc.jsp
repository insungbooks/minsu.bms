<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.purchase.service.PurchaseService"%>
<%@ page import="minsu.bms.purchase.service.PurchaseServiceImpl"%>
<%@ page import="minsu.bms.purchase.dao.PurchaseDao"%>
<%@ page import="minsu.bms.purchase.dao.PurchaseDaoImpl"%>
<%@ page import="minsu.bms.purchase.dao.mapper.PurchaseMapper"%>
<%@ page import="minsu.bms.purchase.domain.Purchase"%>
<%@ page import="minsu.bms.config.Configuration"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<%
	PurchaseMapper purchaseMapper = Configuration.getMapper(PurchaseMapper.class);
	PurchaseDao purchaseDao = new PurchaseDaoImpl(purchaseMapper);
	PurchaseService purchaseService = new PurchaseServiceImpl(purchaseDao);
	
	//DecimalFormat df = new DecimalFormat("00");
    
	
	 if(request.getParameter("date1")!=null ||request.getParameter("date2")!=null){
		 String date1= request.getParameter("date1");
		 String date2= request.getParameter("date2");
		 List<Purchase> purchase = purchaseService.findPurchaseSearch(date1, date2);
			request.setAttribute("purchase", purchase);
			
	 }else{
		 String date1 = PurchaseServiceImpl.getDate(-7);
			SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");

			String date2 = sd.format(new Date()); 
			List<Purchase> purchase = purchaseService.findPurchaseSearch(date1, date2);
			request.setAttribute("purchase", purchase);
		
	 }
	
	

	%><jsp:include page="orderList.jsp"/>