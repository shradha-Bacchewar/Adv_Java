<%@page import="com.services.UserServiceImple"%>
<%@page import="com.services.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     

    <jsp:useBean id="user" class ="com.dto.User" scope="session"></jsp:useBean>
    
    <jsp:setProperty property="*" name="user"/>
 
    <%
    
        UserService service = new UserServiceImple();
    
        boolean flag = service.loginUser(user);   
        
        if(flag)
        {
        	
        	session.setAttribute("user", user.getUser_id());
        
            response.sendRedirect("Home.jsp?name="+user.getUsername());
           
        }
    
        else 
        {
        	
            request.getRequestDispatcher("Login.jsp").include(request, response);
        	
        	%>
        	
        	<h1 style =" color: orange">Please Enter UserName and Passowrd Right</h1>
     
        	  
        <%} %>
        
       
  