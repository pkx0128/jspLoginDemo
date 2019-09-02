<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="myuser" class="com.po.User" scope="page"/>
<jsp:useBean id="userDao" class="com.dao.UserDao" scope="page"/>

<jsp:setProperty name="myuser" property="*"/>

<%
	if(userDao.userLogin(myuser)){
		session.setAttribute("username", myuser.getUsername());
		request.getRequestDispatcher("welcome.jsp").forward(request, response);
	}else{
		response.sendRedirect("login.jsp");
	}

%>
