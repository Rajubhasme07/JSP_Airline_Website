<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page import="aquery.Conn" %>
    <jsp:useBean id="obj" class="adpojo.Adata" scope="session"/>
    <jsp:setProperty property="*" name="obj"/>

<%
Conn c=new Conn();
int status=Conn.logincheck(obj);

if(status==1)
{
	session.setAttribute("auser",obj.getAuser());
	response.sendRedirect("home.jsp");
}
else{
	session.setAttribute("ntf", "Wrong Credential");
	response.sendRedirect("login.jsp");
}

%>
