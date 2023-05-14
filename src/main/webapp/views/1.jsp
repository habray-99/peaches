<!DOCTYPE html>
<html>
  <head>
    <title>About us</title>
	<link rel="stylesheet" type="text/css" href="../views/css/index.css" />
    <link rel="stylesheet" type="text/css" href="../views/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../views/js/bootstrap.min.js" />
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
            <form class="example" action="action_page.php">
			  <input type="text" placeholder="Search.." name="search">
			  <button type="submit"><i class="fa fa-search"></i></button>
			</form>
			</li>
          </ul>
        </div>
      </nav>
    </header>
    <br>
    <div class="overall">
    <div class="container">
        <div class="Aboutus">
            <H1><b>About US</b></H1>
            <p>Welcome to Peach Clothing, a vibrant and stylish clothing brand that was established in 2020. Our brand is all about bringing the latest fashion trends to our customers at affordable prices. We believe that everyone should have access to fashionable clothing, regardless of their budget.</p>
            <p>At Peach Clothing, we're passionate about fashion and believe that clothing is more than just an outfit - it's a statement of who you are. That's why we're committed to bringing our customers the latest fashion styles from around the world, ensuring that our collection is always fresh, unique, and on-trend.</p>
         <p>We take pride in using high-quality fabrics that are both comfortable and durable. We want our customers to feel confident and comfortable in our clothing, and we know that starts with the fabric. We're always looking for new ways to improve our products and provide our customers with the best possible experience.</p>
        <p>We're a brand that believes in ethical and sustainable practices. We're committed to responsible sourcing and manufacturing, and we're always looking for new ways to reduce our environmental impact. We believe in making a positive difference in the world, and we know that starts with the choices we make as a brand.</p>
         <p>At Peach Clothing, we're passionate about our customers, and we believe in providing exceptional customer service. We're always happy to answer any questions or concerns our customers may have, and we're committed to making their shopping experience with us as seamless as possible.</p>
         <p>We offer a range of styles to suit every occasion, from casual wear to something more formal. Whether you're looking for a new outfit for a night out or something more practical for everyday wear, we've got you covered. We're dedicated to helping our customers look and feel their best, and we're always on the lookout for new ways to improve our collection and provide our customers with the best possible experience.</p>
        <p>Thank you for choosing Peach Clothing, and we look forward to providing you with stylish and affordable fashion for years to come.</p>
        </div>
        <button id="buttonID" onClick="functionName()"><i class="fas fa-arrow-up"></i></button>
		<script src="script.js"></script>
        </div>
        </div>
        <br>



        <!-- Footer Start -->
        <footer class="footer">
            <div class="container">
              <div class="row pb-5">
                <div class="col-md-3">
                  <h3>Website Name</h3>
                  <p>
                    Lorem Ipsum is simply dummy text of the printing and typesetting
                    industry.
                  </p>
                </div>
                <div class="offset-md-1 col-md-3 title">
                  <h3>Contacts</h3>
                  <div class="para1">
                    <span class="left-styled-para">Kathmandu,Nepal</span><br />
                  </div>
                  <div class="para2">
                    <span class="left-styled-para">test@gmail.com</span><br />
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
                <p>? 2020 Website - Handmade by Me.</p>
                <span> Contact us | Privacy policy</span>
              </div>
            </div>
          </footer>
          <!-- Footer End -->
      
          <!-- Jquery js Start -->
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
          <!-- Bootstarp Js -->
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"></script>
        </body>
      </html>