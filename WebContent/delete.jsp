
    <%@ page import="aquery.Conn"  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="aquery.Conn" %>
        <%@ page import="adpojo.Adata" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
</head>
<body>
<% 

 int id=Integer.parseInt(request.getParameter("id"));

int status=Conn.del(id);
if(status==1){
	response.sendRedirect("Availableflight.jsp");
}
else{
	out.print("Sorry Unable to Delete");
}
%>
</body>
</html>