<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Product</title>
    <link rel="stylesheet" type="text/css" href="../css/index.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
    <link rel="stylesheet" type="" href="../css/bootstrap.min.js" />
    <script src="https://kit.fontawesome.com/5f2ca8eb57.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="../css/" />
    <script src="../js/"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        
        h1 {
            text-align: center;
        }
        
        ul {
            list-style-type: none;
            padding: 0;
            margin: 20px;
            text-align: center;
        }
        
        li {
            display: inline-block;
            margin: 0 10px;
        }
        
     
        
        a:hover {
            background-color: #ddd;
        }
    </style>
  </head>
  <body>
    <!-- Header Start(Navigation) -->
    <header class="header">
      <nav class="navbar navbar-expand-lg navbar-light bg-transparent">
        <a class="navbar-brand" href="#"
          ><img
            id="logo"
            class="logo"
            src="logo.png"
            alt="LOGO"
          />
        </a>
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="true"
          aria-label="Toggle navigation"
          onclick="toogleExpand()"
        >
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
             <li>
            <form class="example" action="searchbutton">
			  <input type="text" placeholder="Search.." name="search">
			  <button type="submit"><i class="fa fa-search"></i></button>
			</form>
			</li>
             </li>
          </ul>
        </div>

      </nav>
    </header>
<body>
    <h1>Product Management System</h1>
    
    <ul>
        <li><a href="addproduct.jsp">Add Product</a></li>
        <li><a href="editproduct.jsp">Edit Product</a></li>
        <li><a href="deleteproduct.jsp">Delete Product</a></li>
    </ul>
    
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
              <span class="left-styled-para">Peachcollection@gmail.com</span><br />
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
          <p>© 2020 Website - Peach-Collection</p>
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