<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.login.service.SignUp" %>
<%@ page import="minsu.bms.login.service.SignUpImpl" %>
<%@ page import="minsu.bms.config.Configuration"%>
<%@ page import="minsu.bms.login.dao.LoginDao"%>
<%@ page import="minsu.bms.login.dao.LoginDaoImpl"%>
<%@ page import="minsu.bms.login.dao.mapper.LoginMapper"%>
<%@ page import="minsu.bms.login.domain.User"%>
<!DOCTYPE html>
<% 	
	LoginMapper loginMapper = Configuration.getMapper(LoginMapper.class);
	LoginDao loginDao = new LoginDaoImpl(loginMapper);
	SignUp signUp = new SignUpImpl(loginDao);

	String userId = request.getParameter("id");
	String password = request.getParameter("password"); 
	String name = request.getParameter("name");     
 	
	String myNum1 = request.getParameter("myNum1"); 
 	String myNum2 = request.getParameter("myNum2");
 	String myNum = myNum1+"-"+myNum2;
 	
 	String gender = request.getParameter("sex");
 	int age = Integer.parseInt(request.getParameter("age"));
	
	String em1 = request.getParameter("email1");
	String em2 = request.getParameter("email2");
	String email = em1+"@"+em2;
	
 	String ph1 = request.getParameter("phoneNum1"); 
 	String ph2 = request.getParameter("phoneNum2"); 
 	String ph3 = request.getParameter("phoneNum3"); 
 	String phoneNum = ph1+"-"+ph2+"-"+ph3;
	
 	String address = request.getParameter("address");
	
	User user = new User(userId,password,name,age,gender,myNum,
			email,phoneNum,address);
	signUp.join(user);
%>

<jsp:forward page= "../../shop/system/signUpSuccess.jsp"/> 
</body>
</html>