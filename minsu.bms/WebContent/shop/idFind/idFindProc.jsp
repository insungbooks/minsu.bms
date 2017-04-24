<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.login.service.FindService"%>
<%@ page import="minsu.bms.login.service.FindServiceImpl"%>
<%@ page import="minsu.bms.config.Configuration"%>
<%@ page import="minsu.bms.login.dao.LoginDao"%>
<%@ page import="minsu.bms.login.dao.LoginDaoImpl"%>
<%@ page import="minsu.bms.login.dao.mapper.LoginMapper"%>
<%@ page import="minsu.bms.login.domain.User"%>
<!DOCTYPE html>
<%
	LoginMapper loginMapper = Configuration.getMapper(LoginMapper.class);
	LoginDao loginDao = new LoginDaoImpl(loginMapper);
	FindService findService = new FindServiceImpl(loginDao);
	
	String name = request.getParameter("name");
	String myNum = request.getParameter("myNum");
	System.out.print(name.trim());
	System.out.print(myNum);
	
	String userId=null;
	if(name !=null && !name.equals("") && myNum != null && !myNum.equals("")) {
		name = name.trim();  
		myNum= myNum.trim(); 
		userId = findService.FindIdCheck(name, myNum);	
	}
	
	if(userId!=null){
		System.out.print(userId);
		request.setAttribute("userId", userId);
	}
	
	
%><jsp:include page="idFindAfter.jsp"/>