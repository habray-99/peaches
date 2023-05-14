<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="header">
<link rel="stylesheet" type="text/css" href="../css/index.css" />
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../js/bootstrap.min.js" />
<link rel="stylesheet" type="text/css" href="../css/">
<script type="text/javascript" src="../js"></script>
<script type="text/javascript" src="../js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
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
            <form class="example" action="/SearchProduct">
			  <input type="text" placeholder="Search.." name="search">
			  <button type="submit"><i class="fa fa-search"></i></button>
			</form>
			</li>
          </ul>
        </div>
      </nav>
    </header>