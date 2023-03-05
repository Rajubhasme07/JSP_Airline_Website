<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page import="aquery.Conn" %>
     <%@ page import="adpojo.Adata" %>
    <jsp:useBean id="obj" class="adpojo.Adata" scope="session"/>
    <jsp:setProperty property="*" name="obj"/>

<%
Conn c=new Conn();
int status=Conn.user_login(obj);


if(status==1)
{
	
	session.setAttribute("user_email",obj.getUser_email());
	response.sendRedirect("showflight.jsp");
}
else{
	response.sendRedirect("login_user.jsp");
}

%>
