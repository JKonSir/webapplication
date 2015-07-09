<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="servlets.ServerBean"%>
<%
    ServerBean serverBean = (ServerBean) session.getAttribute("serverBean");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
    <%
        if (serverBean == null) {
    %>
    <meta http-equiv="refresh" content="5;index.jsp">
    <%
        }
    %>
    <title>Insert title here</title>
</head>
<body>
<h1>Лабораторная работа №3</h1>
<h3>
    Сироткин 6406, <br>вариант 13
</h3>
<form>
    <input name="TestField1" type="text" size="20"
           value='<%=serverBean.getArg1()%>' disabled="disabled"> <br>
    <input name="TestField2" type="text" size="20"
           value='<%=serverBean.getArg2()%>' disabled="disabled"><br>
    <input name="TestField3" type="text" size="20"
           value='<%=serverBean.getArg3()%>' disabled="disabled"><br>
</form>
<a href="ServletXml" class="result">result</a>
<a href="index.jsp" class="index">Вернуться на стартовую страницу</a>
</body>
</html>
