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
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import ="java.text.SimpleDateFormat"%>
<%@ page import ="java.text.ParsePosition"%>
<%@ page import ="java.util.Date"%>
<%@ page import="minsu.bms.delivery.service.DeliveryService"%>
<%@ page import="minsu.bms.delivery.service.DeliveryServiceImpl"%>
<%@ page import="minsu.bms.delivery.dao.DeliveryDao"%>
<%@ page import="minsu.bms.delivery.dao.DeliveryDaoImpl"%>
<%@ page import="minsu.bms.delivery.dao.mapper.DeliveryMapper"%>
<%@ page import="minsu.bms.delivery.domain.Delivery"%>
<!DOCTYPE html>
<%
	PurchaseMapper purchaseMapper = Configuration.getMapper(PurchaseMapper.class);
	PurchaseDao purchaseDao = new PurchaseDaoImpl(purchaseMapper);
	PurchaseService purchaseService = new PurchaseServiceImpl(purchaseDao);
	DeliveryMapper deliveryMapper = Configuration.getMapper(DeliveryMapper.class);
	DeliveryDao deliveryDao = new DeliveryDaoImpl(deliveryMapper);
	DeliveryService deliveryService = new DeliveryServiceImpl(deliveryDao);
	
	String id=(String)session.getAttribute("login");

	List<Purchase> purchases = (List<Purchase>)purchaseService.findPurchaseId(id);
	Delivery delivery=null;
	int deliveryNum=0;
	
	DecimalFormat df = new DecimalFormat("00");
	Calendar currentCalendar = Calendar.getInstance();
	
	String strYear = Integer.toString(currentCalendar.get(Calendar.YEAR));
	String strMonth = df.format(currentCalendar.get(Calendar.MONTH) + 1);
	String strDay = df.format(currentCalendar.get(Calendar.DATE) );
	int strDate = Integer.parseInt(strYear+strMonth+strDay) ;
	
	System.out.println(strDate); 
	for(Purchase purchase :purchases){
		deliveryNum = purchase.getDeliveryNum();
		delivery = (Delivery)deliveryService.findDelivery(deliveryNum);
		
		String[] date = delivery.getDeliveryDate().split("-");
		int deliveryDate =Integer.parseInt(date[0]+date[1]+date[2]);
		System.out.println(deliveryDate); 
		
		if(deliveryDate<strDate){
			delivery.setDeliveryNow("배송완료");
			deliveryService.modifyDeliveryNow(delivery);
		}
	}	
%>
<jsp:include page="orderList.jsp"/>