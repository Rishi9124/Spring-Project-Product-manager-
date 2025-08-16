<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./base.jsp" %>

<html>
<head>
  <title>Product List</title>
  <style>
    /* Fullscreen background image */
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      height: 100vh;
      background-size: cover;
      position: relative;
    }

    /* Blur overlay */
    body::before {
      content: "";
      position: absolute;
      top: 0; left: 0;
      width: 100%;
      height: 100%;
      background: inherit;
      filter: blur(8px);  /* blur effect */
      transform: scale(1.1); /* prevent edge clipping */
      z-index: -1;
    }

    /* Foreground content */
    .content {
      position: relative;
      z-index: 1;
      padding: 20px;
      background: rgba(255, 255, 255, 0.8); /* semi-transparent white */
      border-radius: 10px;
      box-shadow: 0px 4px 15px rgba(0,0,0,0.2);
    }
  </style>
</head>
<body>
 <div class="container mt-5 content">
  <h2 class="text-center mb-4">Product Management</h2>
  <table class="table table-bordered table-hover">
    <thead class="table-dark">
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
          <td>
            <a href="delete/${p.id}" class="btn btn-outline-danger btn-sm">Delete</a>
            <a href="update/${p.id}" class="btn btn-outline-primary btn-sm">Update</a>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  <div class="text-center mt-3">
    <a href="addProduct" class="btn btn-success">Add Product</a>
  </div>
 </div>
</body>
</html>
