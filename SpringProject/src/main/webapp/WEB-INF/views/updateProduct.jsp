

<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="./base.jsp"  %>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h2 class="text-center fw-bold mb-4">Update the product detail</h2>
            <form action="${pageContext.request.contextPath}/saveProduct" method="post">
            <input type="text" value="${product.id}" name ="id"/>
                <!-- Product Name -->
                <div class="mb-3">
                    <label for="name" class="form-label">Product Name</label>
                    <input type="text" id="name" name="name" class="form-control" value = "${product.name}" required>
                </div>

                <!-- Product Description -->
                <div class="mb-3">
                    <label for="description" class="form-label">Product Description</label>
                   <input type="text" id="description" name="description" class="form-control" value = "${product.description}" rows="4" required></textarea>

                </div>

                <!-- Product Price -->
                <div class="mb-4">
                    <label for="price" class="form-label">Product Price</label>
                    <input type="number" id="price" name="price" class="form-control" value = "${product.price}" required>
                </div>

                <!-- Buttons -->
                <div class="d-flex justify-content-center gap-3">
                    <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Optional Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
