<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Anniversary Personalised Mug</title>
    <style>
                 
    .header {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 10px 20px;
        background-color: #fff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .header .logo img {
        height: 50px;
        width:250px;
    }
    .header .search-bar {
        flex-grow: 1;
        margin: 0 10px;
        position: relative;
        max-width: 300px;
    }
    .header .search-bar input {
        width: 100%;
        padding: 10px 40px 10px 20px;
        border: 1px solid #ddd;
        border-radius: 25px;
        box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
    }
    .header .search-bar .search-icon {
        position: absolute;
        right: 10px;
        top: 50%;
        transform: translateY(-50%);
        cursor: pointer;
    }
    .header .delivery-location {
        margin-left: 20px;
    }
    .header .delivery-location button,
    .header .user-info button {
        background: none;
        border: none;
        cursor: pointer;
        color: #555;
        font-size: 14px;
    }
    .header .user-info {
        display: flex;
        align-items: center;
        gap: 15px;
    }
    .header .user-info button span {
        background: #e86b8a;
        color: #fff;
        border-radius: 50%;
        padding: 5px 10px;
        margin-left: 5px;
    }
    .header .user-info img {
        height: 30px;
        width: 30px;
        border-radius:50%;
    }
    .nav {
            display: flex;
            justify-content: space-around;
            padding: 10px;
            background-color: #e86b8a;
            color: #fff;
            position: relative;
        }
        .nav a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            transition: color 0.3s ease;
        }
        .nav a:hover {
            color:purple;
        }
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #fff;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            width: 800px; /* Adjust width as needed */
            left: 0;
            right: 0;
            margin: auto;
            color: #000;
            padding: 20px;
        }
        .dropdown-content .dropdown-column {
            float: left;
            width: 25%; /* Adjust column width as needed */
            padding: 10px;
            box-sizing: border-box;
        }
        .dropdown-content .dropdown-column h3 {
            margin-top: 0;
            font-size: 16px;
            font-weight: bold;
            color: #e86b8a;
        }
        .dropdown-content .dropdown-column a {
            color: #555;
            text-decoration: none;
            display: block;
            padding: 5px 0;
            transition: color 0.3s ease;
        }
        .dropdown-content .dropdown-column a:hover {
            color: #ff3366;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .nav .delivery-gifts {
            position: relative;
            display: flex;
            align-items: center;
        }
        .nav .delivery-gifts .vehicle {
            height: 20px;
            animation: moveVehicle 5s linear infinite;
            margin-left: 5px;
        }
        .vehicle {
            height: 30px;
        }
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        .profile-dropdown {
        position: relative;
        display: inline-block;
    }
    .profile-dropdown-content {
        display: none;
        position: absolute;
        background-color: #fff;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
        right: 0;
        padding: 10px;
        border-radius: 4px;
        width: 200px; /* Adjust width as needed */
    }
    .profile-dropdown-content h2 {
        margin: 0;
        padding: 10px 0;
        font-size: 16px;
        color: #333;
    }
    .profile-dropdown-content p {
        margin: 0;
        padding: 5px 0 10px;
        font-size: 14px;
        color: #777;
    }
    .profile-dropdown-content a {
        color: #555;
        text-decoration: none;
        display: block;
        padding: 5px 0;
        transition: color 0.3s ease;
    }
    .profile-dropdown-content a:hover {
        color: #ff3366;
    }
    .profile-dropdown:hover .profile-dropdown-content {
        display: block;
    }
    .profile-dropdown-content .signup-login {
        color: #ff3366;
        font-weight: bold;
        text-decoration: none;
        display: block;
        padding: 5px 0 15px;
    }  
         

        

        .product-container {
            display: flex;
            justify-content: space-around;
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .product-image img {
            max-width: 300px;
            border-radius: 5px;
        }

        .product-details {
            max-width: 400px;
        }

        .product-details h2 {
            margin: 0 0 10px;
        }

        .rating {
            color: #e4007f;
        }

        .price {
            font-size: 24px;
            color: #333;
            margin: 10px 0;
        }

        .upload-photo {
            margin: 20px 0;
        }

        .upload-photo label {
            display: block;
            margin-bottom: 5px;
        }

        .check-delivery {
            display: flex;
            align-items: center;
            margin: 20px 0;
        }

        .check-delivery input {
            flex-grow: 1;
            padding: 5px;
            margin-right: 5px;
        }

        .check-delivery button {
            padding: 6px 10px;
        }

        .add-to-cart {
            background-color: #00b500;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        .add-to-cart:hover {
            background-color: #009e00;
        }

        .offers, .upgrades {
            margin-top: 20px;
        }

        .upgrades img {
            width: 100px;
            height: auto;
            margin-right: 10px;
            border-radius: 5px; /* Adding rounded corners */
        }
        body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}
.container {
            width: 80%;
            margin: 0 auto;
            text-align: left;
            padding: 20px 0;
        }
        .footer-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #ddd;
            padding-bottom: 20px;
        }
        .footer-top div {
            text-align: center;
            flex: 1;
        }
        .footer-top div img {
            width: 50px;
            display: block;
            margin: 0 auto 10px;
        }
        .footer-links {
            display: flex;
            justify-content: space-between;
            padding: 20px 0;
        }
        .footer-links div {
            flex: 1;
            margin: 0 10px;
        }
        .footer-links div strong {
            display: block;
            margin-bottom: 10px;
        }
        .footer-links div a {
            display: block;
            color: #007bff;
            text-decoration: none;
            margin-bottom: 5px;
        }
        .footer-bottom {
            text-align: center;
            padding: 20px 0;
            border-top: 1px solid #ddd;
        }
        .footer-bottom img {
            width: 100px;
            margin: 0 10px;
        }
        .footer-bottom .social-icons img {
            width: 25px;
            margin: 0 5px;
        }
        .cart-icon {
            position: relative;
        }
        #cart-count {
            position: absolute;
            top: -10px;
            right: -10px;
            background-color: rgb(255, 0, 217);
            color: white;
            border-radius: 50%;
            padding: 5px 10px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <header>
        <div class="header">
            <div class="logo">
                <h3>ZENC<i class="fa-solid fa-cart-shopping"></i>RT</h3>
            </div>
            <div class="search-bar">
                <input type="text" placeholder="Search for gifts">
                <div class="search-icon"><i class="fa-solid fa-magnifying-glass"></i></div>
            </div>
            <div class="delivery-location">
                <button>Delivery Location</button>
            </div>
            <div class="user-info">
                
                
                <div class="profile-dropdown">
                    <img src="profile.jpg" alt="Profile">
                    <div class="profile-dropdown-content">
                        <h2>Welcome</h2>
                        <p>To access account and manage orders</p>
                        <a href="#" class="signup-login">Signup/Login</a>
                        <a href="#">My Winni</a>
                        <a href="#">My Orders</a>
                        <a href="#">My Address Book</a>
                        <a href="#">My Wallet</a>
                        <a href="#">My Reminder</a>
                    </div>
                </div>
                
                <div class="cart-icon">
                    <span id="cart-count">0</span>
                    <img src="https://t3.ftcdn.net/jpg/03/14/84/68/360_F_314846831_5jJsC7Us9obgwMjRDqFhs04dodzvnZvi.jpg" alt="Cart Icon" ><a href="cart1.html"></a>
                </div>
            </div>
        </div>
        <div class="nav">
            <a href="#" class="express">EXPRESS</a>
            <a href="#">CAKES</a>
            <a href="#">FLOWERS</a>
            <a href="#">PLANTS</a>
            <a href="#">GIFTS</a>
            <div class="dropdown">
                <a href="#" class="dropbtn">PERSONALIZED GIFTS</a>
                <div class="dropdown-content">
                    <div class="dropdown-column">
                        <h3>Personalized Gifts</h3>
                        <a href="#">Mugs</a>
                        <a href="#">Cushions</a>
                        <a href="#">Water Bottles</a>
                        <a href="#">Key Chains</a>
                        <a href="#">Clocks</a>
                        <a href="#">Chocolates</a>
                        <a href="#">Engraved Gifts</a>
                        <a href="#">T-Shirts</a>
                        <a href="#">Stationary Gifts</a>
                        <a href="#">Personalized Accessories</a>
                    </div>
                    <div class="dropdown-column">
                        <h3>Special Gifts</h3>
                        <a href="#">New Arrival</a>
                        <a href="#">Photo Frames</a>
                        <a href="#">LED Frames</a>
                        <a href="#">Photo To Art</a>
                        <a href="#">Caricatures</a>
                        <a href="#">Personalised Combos</a>
                    </div>
                    <div class="dropdown-column">
                        <h3>By Recipients</h3>
                        <a href="#">For Her</a>
                        <a href="#">For Him</a>
                        <a href="#">For Husband</a>
                        <a href="#">For Wife</a>
                        <a href="#">For Kids</a>
                        <a href="#">For Couples</a>
                    </div>
                    <div class="dropdown-column">
                        <h3>By Occasions</h3>
                        <a href="#">Birthday Gifts</a>
                        <a href="#">Anniversary</a>
                        <a href="#">Wedding Gifts</a>
                        <a href="#">Love & Romance</a>
                    </div>
                </div>
            </div>
            <a href="#">CHOCOLATES</a>
            <a href="#">COMBOS</a>
            <a href="#">BIRTHDAY</a>
            <a href="#">ANNIVERSARY</a>
            <a href="#">OCCASIONS</a>
        </div>
    </header>
    <a href="Homes.html">Home</a>
    <a href="">Mugs</a>

    <main>
        <div class="product-container">
            <div class="product-image">
                <img src="https://assets.winni.in/product/primary/2024/2/94171.jpeg?dpr=1&w=400" alt="Anniversary Personalised Mug">
            </div>
            <div class="product-details">
                <h2>Personalized pencil Mug</h2>
                <p class="rating">4.0 <span>(1 Review)</span></p>
                <p class="price">409</p>
                <p>Inclusive of all taxes</p>
                <div class="upload-photo">
                    <label for="upload">Upload Photo</label>
                    <input type="file" id="upload" accept="image/jpeg, image/png, image/jpg">
                </div>
                <div class="check-delivery">
                    <input type="text" placeholder="Enter pincode to check delivery">
                    <button>Check</button>
                </div>
                <a href="cart1.html">
                    <button class="btn btn-success">PROCEED</button>
                    </a>
                <button id="add-to-cart">
                    ADD TO CART
                </button>
            </div>
        </div>
        <div class="offers">
            <p>Available offers:</p>
            <ul>
                <li>Get upto ₹750 Cashback on paying via Mobikwik</li>
                <li>Use Coupon Code: TRYWNNI to get 20% off</li>
                <li>Use Coupon Code: WIN50 to get ₹50 off</li>
            </ul>
        </div>
        <div class="upgrades">
            <p>Pick an upgrade:</p>
            <img src="https://assets.winni.in/product/primary/2022/6/61855.jpeg?dpr=1&w=355" alt="Custom Anniversary Mug">
            <img src="https://assets.winni.in/product/primary/2022/6/61434.png?dpr=1&w=355" alt="Black Anniversary Mug">
            <img src="https://assets.winni.in/product/primary/2022/5/60767.jpeg?dpr=1&w=355" alt="Wedding Anniversary Mug">
            <img src="https://assets.winni.in/product/primary/2023/3/83325.jpeg?dpr=1&w=355" alt="Personalized Anniversary Mug">
            <img src="https://assets.winni.in/product/primary/2022/6/61326.jpeg?dpr=1&w=355" alt="Anniversary Wishes Mug">
        </div>
    </main>
    <footer>
        <div class="container">
            <div class="footer-top">
                <div>
                    <img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTggK9jbqs_duwa94HvuEmPXXD7bUgJdJvbFojOLyl4FKBKN2KE" alt="Cities Icon">
                    <strong>700+ Cities</strong>
                    <span>Happily Delivering</span>
                </div>
                <div>
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT75uonX-MNcgKSLNZjJiEwzazhni47HwgmxotQViVxlr9H4X0TMOBY9PgpeqA7Cu9yI4M&usqp=CAU" alt="Secure Payments Icon">
                    <strong>100% Secure Payments</strong>
                    <span>All Major Credit & Debit Cards Accepted</span>
                </div>
                <div>
                    <img src="https://cdn.vectorstock.com/i/500p/61/14/customer-service-icon-support-manager-vector-9416114.jpg" alt="Customers Icon">
                    <strong>20,000,000</strong>
                    <span>Customers Across The World</span>
                </div>
            </div>
            <div class="footer-links">
                <div>
                    <strong>Our Company</strong>
                    <a href="#">About Us</a>
                    <a href="#">Careers</a>
                    <a href="#">Contact Us</a>
                    <a href="#">Affiliate Program</a>
                    <a href="#">In News</a>
                </div>
                <div>
                    <strong>Quick Links</strong>
                    <a href="#">Wishes</a>
                    <a href="#">Sitemap</a>
                    <a href="#">Customer Reviews</a>
                    <a href="#">Blog - Celebrate Relations</a>
                    <a href="#">Corporate Order</a>
                    <a href="#">Franchise Enquiry</a>
                </div>
                <div>
                    <strong>Policy & Security</strong>
                    <a href="#">FAQ</a>
                    <a href="#">Refund Policy</a>
                    <a href="#">Privacy Policy</a>
                    <a href="#">Bug Bounty</a>
                    <a href="#">Data Security</a>
                    <a href="#">Cancellation Policy</a>
                    <a href="#">Terms And Conditions</a>
                    <a href="#">Payments And Security</a>
                </div>
            </div>
            <div class="footer-bottom">
                <div>
                    <strong>Connect with Us</strong>
                    <div class="social-icons">
                        <a href="#"><img src="https://assets.winni.in/groot/2023/07/19/desktop/facebook.png" alt="Facebook"></a>
                        <a href="#"><img src="https://assets.winni.in/groot/2023/07/19/desktop/instagram.png" alt="Instagram"></a>
                        <a href="#"><img src="https://assets.winni.in/groot/2023/07/19/desktop/youtube.png" alt="YouTube"></a>
                        <a href="#"><img src="https://assets.winni.in/groot/2023/07/19/desktop/linkdin.png" alt="LinkedIn"></a>
                        <a href="#"><img src="https://assets.winni.in/groot/2023/12/14/desktop/twiter.png" alt="Twitter"></a>
                        <a href="#"><img src="https://assets.winni.in/groot/2024/04/23/mobile/black-whatsapp-icon.png" alt="WhatsApp"></a>
                    </div>
                </div>
                <div>
                    <span>© 2013 - 2024 Winni.in. All Rights Reserved</span>
                </div>
                <div>
                    <strong>Experience Winni on mobile</strong>
                    <a href="#"><img src="https://assets.winni.in/groot/2023/07/19/desktop/google-play.png" alt="Google Play"></a>
                    <a href="#"><img src="https://assets.winni.in/groot/2023/07/19/desktop/app-store.png" alt="App Store"></a>
                </div>
            </div>
        </div>
    
    
    </footer>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            let cartCount = localStorage.getItem('cartCount') ? parseInt(localStorage.getItem('cartCount')) : 0;
            const addToCartButton = document.getElementById("add-to-cart");
            const cartCountElement = document.getElementById("cart-count");

            cartCountElement.textContent = cartCount;

            addToCartButton.addEventListener("click", function() {
                cartCount++;
                localStorage.setItem('cartCount', cartCount);
                cartCountElement.textContent = cartCount;
            });
        });
    </script>
</body>
</html>