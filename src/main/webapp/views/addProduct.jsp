<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <head>
    <title>Add Product Form</title>
    <style>
      /* Add some basic styles to the form */
      .product-form {
        max-width: 600px;
        margin: 0 auto;
        padding: 50px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f7f7f7;
        font-family: Arial, sans-serif;
      }
      .product-form label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
      }
      .product-form input[type="text"],
      .product-form textarea {
        width: 99%;
        padding: 10px;
        margin-bottom: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 16px;
        font-family: Arial, sans-serif;
      }
      .product-form textarea {
        height: 100px;
      }
      .product-form button {
        background-color: #4CAF50;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
      }
      .product-form button:hover {
        background-color: #3e8e41;
      }
    </style>
  </head>
  <body>
    <h1>Product Form</h1>
    <form class="product-form" action="<%=request.getContextPath()%>/AddProductDAO"  method="post" enctype="multipart/form-data">
      <%--@declare id="product-picture"--%><label for="product-name">Product Name:</label>
      <input type="text" id="name" name="name">

      <label for="product-price">Product Price:</label>
      <input type="text" id="price" name="price">
      
      <label for="product-category">Product Category:</label>
      <input type="text" id="name" name="catID">
      
      <label for="product-stock">Stock:</label>
      <input type="text" id="name" name="stock" value="1">
      
      <label for="product-picture">Picture:</label>
      <input type="file" name="photo" value="upload">
      <br>
    

      <label for="product-description">Product Description:</label>
      <textarea id="description" name="desc"></textarea>

      <button type="submit">Add Product</button>
    </form>
</body>
</html>