<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page import="aquery.Conn" %>
    <jsp:useBean id="obj" class="adpojo.Adata" scope="session"/>
    <jsp:setProperty property="*" name="obj"/>

<%
Conn c=new Conn();
int status=Conn.User_reg(obj);

if(status==1)
{
	response.sendRedirect("login_user.jsp");
}
else{

}

%>