<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="demo.Customer" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>demo.Customer List</title>
    <style>
        img{
            width: 80px;
            height: 120px;
        }
    </style>
</head>
<%
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer("DucAnh", 22, "HN"));
    customerList.add(new Customer("Phuong", 24, "Thai Nguyen"));
    customerList.add(new Customer("BatRan", 27, "Thai Binh"));
    customerList.add(new Customer("Hieu", 24, "LC"));
    customerList.add(new Customer("Hoang", 24, "HNam"));
    request.setAttribute("ds",customerList);
%>
<body>
<table class="table table-bordered">
    <tr>
        <th>Name</th>
        <th>Age</th>
        <th>Address</th>
    </tr>
    <c:forEach var="listCus" items="${ds}">
        <tr>
            <td>${listCus.name}</td>
            <td>${listCus.age}</td>
            <td>${listCus.address}</td>
            <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Donald_Trump_official_portrait.jpg/220px-Donald_Trump_official_portrait.jpg"></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>