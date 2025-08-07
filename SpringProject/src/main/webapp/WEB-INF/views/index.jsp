<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./base.jsp" %>

<html>
<head>
  <title  class ="container text center">Product List</title>
</head>
<body>
 <div class =" container mt-5">
  <table class="table">
    <thead>
      <tr>
        <th scope="col">Sr.No.</th>
        <th scope="col">Product-Name</th>
        <th scope="col">Description</th>
        <th scope="col">Price</th>
        <th scope="col">Action</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${product}" var="p">
        <tr>
          <th scope="row">${p.id}</th>
          <td>${p.name}</td>
          <td>${p.description}</td>
          <td>${p.price}</td>
          <td><a href = "delete/${p.id}" class ="btn btn-outline-success">delete</a>
          <a href = "update/${p.id}" class ="btn btn-outline-success">update</a></td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  <div>
  <div class ="container text center">

  <a href = "addProduct" class ="btn btn-outline-success"> Add Product</a>
  </div>
</body>
</html>
