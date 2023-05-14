<%@ page import="com.controllers.P_C_Getter" %>
<%@ page import="com.models.ProductCategory" %>
<%@ page import="java.util.List" %>
<%@ page import="com.models.Products" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.models.Order" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
  <title>Insert title here</title>
</head>

<body>

<head>
  <title>adminpanel</title>
  <link rel="stylesheet" type="text/css" href="../css/index.css" />
  <link rel="stylesheet" type="text/css" href="../css/responsive.css" />
  <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
  <script type="text/javascript" src="../js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/" />
  <script src="../js/"></script>
</head>

<body>

<!-- for header part -->
<header>

  <nav class="navbar navbar-expand-lg navbar-light bg-transparent">
    <a class="navbar-brand" href="#"><img id="logo" class="logo" src="logo.png"
                                          alt="LOGO" />
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="true" aria-label="Toggle navigation"
            onclick="toogleExpand()">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="home.html">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="aboutus.html">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="product.html">Product</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.html">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contact.html">Contacts</a>
        </li>
        <li>
          <form class="example" action="action_page.php">
            <input type="text" placeholder="Search.." name="search">
            <button type="submit"><i class="fa fa-search"></i></button>
          </form>
        </li>
      </ul>
    </div>
  </nav>

</header>

<div class="main-container">
  <div class="navcontainer">
    <nav class="nav">
      <div class="nav-upper-options">
        <div class="nav-option option1">
          <a href="adminpanel.jsp">Dashboard</a>
        </div>

        <div class="nav-option option1">
          <a href="files.jsp">Product</a>
        </div>


        <div class="nav-option option1">
          <a href="Logout.jsp">Logout</a>
        </div>

      </div>
    </nav>
  </div>
  <div class="main">

    <div class="searchbar2">
      <input type="text" name="" id="" placeholder="Search">
      <div class="searchbtn">
        <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
             class="icn srchicn" alt="search-button">
      </div>
    </div>

    <div class="box-container">

      <div class="box box1">
        <div class="text">
          <h2 class="topic-heading">2500</h2>
          <h2 class="topic">product Views</h2>
        </div>

        <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210184645/Untitled-design-(31).png"
             alt="Views">
      </div>

      <div class="box box2">
        <div class="text">
          <h2 class="topic-heading">150</h2>
          <h2 class="topic">Likes</h2>
        </div>

        <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210185030/14.png"
             alt="likes">
      </div>

      <div class="box box3">
        <div class="text">
          <h2 class="topic-heading">320</h2>
          <h2 class="topic">Comments</h2>
        </div>

        <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210184645/Untitled-design-(32).png"
             alt="comments">
      </div>

      <div class="box box4">
        <div class="text">
          <h2 class="topic-heading">1765</h2>
          <h2 class="topic">Sold</h2>
        </div>

        <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210185029/13.png"
             alt="published">
      </div>
    </div>

    <div class="report-container">
      <div class="report-header">
        <h1 class="recent-Articles">Recent Orders</h1>
      </div>

      <div class="report-body">
        <div class="report-topic-heading">
          <h3 class="t-op">order id</h3>
          <h3 class="t-op">product id</h3>
          <h3 class="t-op">quantity</h3>
          <h3 class="t-op">
          </h3>
        </div>

        <% P_C_Getter getter=new P_C_Getter(); List<Order> orderList = getter.getOrderList();
          if(orderList != null){
            for (Order order : orderList){%>
        <div class="item1">
          <h3 class="t-op-nextlvl">
            <%= order.getOrderID() %>
          </h3>
          <h3 class="t-op-nextlvl">
            <%= order.getUserID() %>
          </h3>
          <h3 class="t-op-nextlvl">
            <%= order.getPrice()%>
          </h3>
          <h3 class="t-op-nextlvl label-tag">Completed</h3>
        </div>

        <%} }%>
      </div>
    </div>
  </div>
</div>
<br><br><br>
<footer class="footer">
  <div class="container">
    <div class="row pb-5">
      <div class="col-md-3">
        <h3>Peach-Collection</h3>
        <p>
          Your design.Our product.
        </p>
      </div>
      <div class="offset-md-1 col-md-3 title">
        <h3>Contacts</h3>
        <div class="para1">
          <span class="left-styled-para">Kathmandu,Nepal</span><br />
        </div>
        <div class="para2">
						<span
                                class="left-styled-para">Peachcollection@gmail.com</span><br />
        </div>
        <div class="para3">
          <span class="left-styled-para">1234567890</span><br />
        </div>
      </div>
      <div class="offset-md-1 col-md-4">
        <div class="social-icon-links">
          <div class="social facebook">
            <a href="#"><i class="fab fa-facebook-f mt-2"></i></a>
          </div>
          <div class="social twitter">
            <a href="#"><i class="fab fa-twitter mt-2"></i></a>
          </div>
          <div class="social instragram">
            <a href="#"><i class="fab fa-instagram mt-2"></i></a>
          </div>
          <div class="social google-plus">
            <a href="#"><i class="fab fa-google-plus-g mt-2"></i></a>
          </div>
        </div>
        <p class="mt-4">
          Subscribe to our newsletter of follow us on the social channels to
          stay tuned.
        </p>
      </div>
    </div>
    <hr class="footer-divider" />
    <div class="footer-bootom">
      <p>� 2020 Website - Peach-Collection</p>
      <span> Contact us | Privacy policy</span>
    </div>
  </div>
</footer>
<!-- Footer End -->
<script src="https://kit.fontawesome.com/5f2ca8eb57.js"></script>
<!-- Jquery js Start -->
</body>
</body>

</html>