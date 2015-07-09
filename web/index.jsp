<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    if (request.getParameter("TextField1") != null
            && request.getParameter("TextField1").length() != 0
            && request.getParameter("TextField2") != null
            && request.getParameter("TextField2").length() != 0) {
        request.getRequestDispatcher("/ServletLn").forward(request, response);
    } else {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
    <title>Производит конкатенацию строк</title>
</head>
<body>
<h1>Лабораторная работа №3</h1>
<h2>
    Данное web-приложение при нажатии на <br>кнопку производит
    конкатенацию двух <br>строк.
</h2>
<h3>
    Сироткин 6406, <br>вариант 13
</h3>
<form action="index.jsp" method="get">
    <%
        if (request.getParameter("TextField1") == null) {
    %>
    <b>Введите первую строку:</b><input type="text" name="TextField1">
    <%
    } else {
    %>
    <%
        if (request.getParameter("TextField1").length() == 0) {
    %>
    <b>Введите первую строку:</b><input type="text" name="TextField1"
                                        class="err"> Пустая Строка!!!
    <%
    } else {
    %>
    <b>Введите первую строку:</b><input type="text" name="TextField1"
                                        value='<%=request.getParameter("TextField1")%>'>
    <%
            }
        }
    %>
    <br>
    <%
        if (request.getParameter("TextField2") == null) {
    %>
    <b>Введите вторую строку:</b><input type="text" name="TextField2">
    <%
    } else {
    %>
    <%
        if (request.getParameter("TextField2").length() == 0) {
    %>
    <b>Введите вторую строку:</b><input type="text" name="TextField2"
                                        class="err"> Пустая Строка!!!
    <%
    } else {
    %>
    <b>Введите вторую строку:</b><input type="text" name="TextField2"
                                        value='<%=request.getParameter("TextField2")%>'>
    <%
            }
        }
    %>
    <br> <input type="submit" value="Calculate">
</form>
<%
    }
%>
</body>
</html>
