<%@page import="com.services.UserServiceImple"%>
<%@page import="com.services.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


 <jsp:useBean id="user" class = "com.dto.User" scope="page"></jsp:useBean>
 
 <jsp:setProperty property="*" name="user"/>
 
  <%
  
  
       UserService service = new UserServiceImple();
  
        int count =  service.RegUser(user);
        
        if(count>0)
        {
        
          request.getRequestDispatcher("Reg_Form.jsp").include(request, response);
          %>
          
          <h1>Record Added</h1>
          
        <%}
        else
        {
        	
        	
        }
        
        %>
