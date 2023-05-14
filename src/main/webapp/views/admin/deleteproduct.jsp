<%@ page import="com.controllers.P_C_Getter" %>
<%@ page import="java.util.List" %>
<%@ page import="com.models.Products" %>
<%@ page import="java.util.ArrayList" %>
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
     <link rel="stylesheet" type="text/css" href="../css/" />
     <script src="../js/"></script>
    <style>
      /* Add some basic styles to the form */
      .product-form {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
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
        width: 100%;
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
 <jsp:include page="../templates/header.jsp"></jsp:include>
  <body>
    <h1>Product Form</h1>
    <form class="product-form" action="${pageContext.request.contextPath}/DeleteProductDAO"  method="post" >
      <label for="product-name">ProductID =>  Product Name</label>



            <%
                P_C_Getter getter = new P_C_Getter();
                List<Products> products = getter.getProducts();
                for (Products p : products){%>
        <%--                <option value="<%=p.getProduct_id()%> => <%= p.getProduct_name()%>">--%>
                <h5><%=p.getProduct_id()%> => <%= p.getProduct_name()%></h5>
                <%}
            %>


        <label for="product-ID">Enter ID of product to delete:</label>
        
        <input type="text" name="id">
        

     
      <br>
    

     

      <button type="submit">Delete Product</button>
    </form>
</body>
 <jsp:include page="../templates/footer.jsp"></jsp:include>
</html>