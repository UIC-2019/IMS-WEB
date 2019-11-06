
<%@page import="com.ims.utils.LoginDao"%>
<jsp:useBean id="obj" class="com.ims.utils.LoginBean"/>

<jsp:setProperty property="*" name="obj"/>

<%
boolean status=LoginDao.validate(obj);
if(status){
out.println("You r successfully logged in");
session.setAttribute("session","TRUE");
}
else
{
out.print("Sorry, email or password error");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
}
%>