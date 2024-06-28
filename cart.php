<?php
session_start();
include './connection.php';
$userid = $_SESSION['uid'];
if (!isset($_SESSION['uid'])) {
    header("location:login.php");
}
?>

<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>

<head>
    <title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Packaged Foods :: w3layouts</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
</head>

<body>
    <!-- header -->
    <div class="agileits_header">
        <div class="container">
            <div class="w3l_offers">
                <p>SALE UP TO 70% OFF. USE CODE "SALE70%" . <a href="#">SHOP NOW</a></p>
            </div>
            <div class="agile-login">
                <ul>
                    <li><a href="#"> Create Account </a></li>
                    <li><a href="#">Help</a></li>

                </ul>
            </div>
            <div class="product_list_header">
                <form action="#" method="post" class="last">
                    <input type="hidden" name="cmd" value="_cart">
                    <input type="hidden" name="display" value="1">
                    <button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
                </form>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>

    <div class="logo_products">
        <div class="container">
            <div class="w3ls_logo_products_left1">
                <ul class="phone_email">
                    <li><i class="fa fa-phone" aria-hidden="true"></i>Order online or call us : (+91) 9876543577</li>

                </ul>
            </div>
            <div class="w3ls_logo_products_left">
                <h1><a href="index.html">super Market</a></h1>
            </div>
            <div class="w3l_search">
                <form action="#" method="post">
                    <input type="search" name="Search" placeholder="Search for a Product..." required="">
                    <button type="submit" class="btn btn-default search" aria-label="Left Align">
                        <i class="fa fa-search" aria-hidden="true"> </i>
                    </button>
                    <div class="clearfix"></div>
                </form>
            </div>

            <div class="clearfix"> </div>
        </div>
    </div>
    <!-- //header -->
    <!-- navigation -->

    <?php
    include './themepart/header-nav.php';
    ?>

    <!-- //navigation -->
    <!-- breadcrumbs -->
    <div class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
                <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
                <li class="active">Cart</li>
            </ol>
        </div>
    </div>
    <!-- //breadcrumbs -->
    <!--- pakagedfoods --->
    <div class="products">
        <div class="container">

            <div class="col-md-8 products-right">
                <div class="products-right-grid">
                    <div class="products-right-grids">

                        <div class="clearfix"> </div>
                    </div>
                </div>



                <div class="agile_top_brands_grids">

                    <?php
                    $userid = $_SESSION['uid'];
                    if (!isset($_SESSION['uid'])) {
                        header("location:login.php");
                    }

                    //Delete
                    if (isset($_GET['did'])) {
                        $did = $_GET['did'];
                        $did = mysqli_query($connection, "delete from tbl_cart where cart_id='{$did}'");
                    }
                    echo "<h1>My Cart</h1>";
                    echo "</br>";
                    $q = mysqli_query($connection, "select * from tbl_cart where user_id='{$userid}'");
                    $count = mysqli_num_rows($q);
                    echo "<h4>Your Shopping Cart Contain: $count Products</h4></br>";

                    if ($count > 0) {

                        echo "<table border='1' class='timetable_sub'>";
                        echo "<tr>";
                        echo "<th>ID</th>";
                        echo "<th>Product Name</th>";
                        echo "<th>Photo</th>";
                        echo "<th>Price</th>";
                        echo "<th>Qty</th>";
                        echo "<th>SubTotal</th>";
                        echo "<th>Remove</th>";
                        echo "</tr>";

                        $grandtotal = 0;
                        while ($data = mysqli_fetch_array($q)) {
                            $pq = mysqli_query($connection, "select * from tbl_product where product_id='{$data['product_id']}'");
                            $pdata = mysqli_fetch_array($pq);
                            echo "<tr>";
                            echo "<td>{$pdata['product_id']}</td>";
                            echo "<td>{$pdata['product_name']}</td>";
                            echo "<td><img src='admin/uploads/{$pdata['product_photo']}' width='50'</td>";
                            echo "<td>{$pdata['product_price']}</td>";
                            echo "<td>{$data['product_qty']}</td>";
                            $subtotal = $pdata['product_price'] * $data['product_qty'];
                            $grandtotal += $subtotal;
                            echo "<td>$subtotal</td>";
                            echo "<td><a href='cart.php?did={$data['cart_id']}' onclick='return confirmDelete()'><img src='images/close_1.png'></a></td>";
                            echo "<tr>";
                        }
                        echo "<tr>
<td></td><td></td><td></td><td></td><td>Total Price</td><td>$grandtotal</td>
<td></td>";
                        echo "</table>";
                        echo "<div class='checkout-right-basket'>
                        <a href='checkout.php' class='btn'>Proceed to Checkout <i class='glyphicon glyphicon-menu-right'></i></a>
                        </div>";
                    } else {
                        echo "Cart is Empty";
                    }
                    echo "<div class='checkout-right-basket'>
                    <a href='shop.php' class='btn'><i class='glyphicon glyphicon-menu-left'></i>Continue Shopping</a>
                </div>";
                    ?>


                    <div class="clearfix"> </div>
                </div>


            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!--- pakagedfoods --->
    <!-- //footer -->

    <?php
    include './themepart/footer.php';
    ?>
    <!-- //footer -->
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- top-header and slider -->
    <!-- here stars scrolling icon -->
    <script type="text/javascript">
        $(document).ready(function() {
            /*
            	var defaults = {
            	containerID: 'toTop', // fading element id
            	containerHoverID: 'toTopHover', // fading element hover id
            	scrollSpeed: 1200,
            	easingType: 'linear' 
            	};
            */

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!-- //here ends scrolling icon -->
    <script src="js/minicart.min.js"></script>
    <script>
        // Mini Cart
        paypal.minicart.render({
            action: '#'
        });

        if (~window.location.search.indexOf('reset=true')) {
            paypal.minicart.reset();
        }
    </script>
    <!-- main slider-banner -->
    <script src="js/skdslider.min.js"></script>
    <link href="css/skdslider.css" rel="stylesheet">
    <script type="text/javascript">
        jQuery(document).ready(function() {
            jQuery('#demo1').skdslider({
                'delay': 5000,
                'animationSpeed': 2000,
                'showNextPrev': true,
                'showPlayButton': true,
                'autoSlide': true,
                'animationType': 'fading'
            });

            jQuery('#responsive').change(function() {
                $('#responsive_wrapper').width(jQuery(this).val());
            });

        });
    </script>
    <!-- //main slider-banner -->

</body>

</html>

<script>
    function confirmDelete() {
        return confirm("Are you sure? Remove this item");
    }
</script>