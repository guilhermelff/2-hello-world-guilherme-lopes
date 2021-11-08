<%-- 
    Document   : sayhello
    Created on : 08/02/2021, 23:08:15
    Author     : viter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SayHello.jsp</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="jumbotron">
        <jsp:useBean id="myBean" class="hello.MessageBean"/>
        <h1>SayHello.jsp</h1>
        <% String lang = request.getParameter("lang"); %>
        <% String trat = request.getParameter("trat"); %>
        <jsp:setProperty name="myBean" property="msg" value="<%=lang%>"/>
        <jsp:setProperty name="myBean" property="trat" value="<%=trat%>"/>
        <jsp:getProperty name="myBean" property="msg"/>
        
         <%=request.getParameter("nome")%>!
         <h2><jsp:getProperty name="myBean" property="hour"/>h<jsp:getProperty name="myBean" property="min"/>m</h2>
        </div>
    </body>
</html>
