<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 3/25/2022
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dictionary = new HashMap<>();
%>
<%
    dictionary.put("hello","xin chao");
    dictionary.put("how","the nao");
    dictionary.put("book","sach");
    dictionary.put("mouse","chuot");

    String search  = request.getParameter("search");

    String result = dictionary.get(search);
    if (result != null){
        out.println("Word: " + search + "</br>");
        out.println("Result: " + result);
    }else{
        out.println("Not found");
    }
%>
</body>
</html>
