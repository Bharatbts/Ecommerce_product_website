<div class="navigation-agileits">
    <div class="container">
        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header nav_2">
                <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#" class="act">Home</a></li>
                    <!-- Mega Menu -->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Categories<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="multi-gd-img">
                                    <ul class="multi-column-dropdown">
                                        <h6>All Categories</h6>

                                        <?php
                                        $categoryq = mysqli_query($connection, "select * from tbl_category");
                                        while ($cdata = mysqli_fetch_array($categoryq)) {
                                            echo "<li><a href='shop.php?categoryid={$cdata['category_id']}'><i class='fa fa-arrow-right' aria-hidden='true'></i>{$cdata['category_name']}</a></li>";
                                        }
                                        ?>

                                    </ul>
                                </div>

                            </div>
                        </ul>
                    </li>
                    <li><a href="shop.php">Shop</a></li>

                    <li><a href="contact.html">Contact</a></li>

                    <?php
                    if (isset($_SESSION['uid'])) {
                    ?>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hi <?php echo $_SESSION['uname']; ?><b class="caret"></b></a>
                            <ul class="dropdown-menu multi-column columns-3">
                                <div class="row">
                                    <div class="multi-gd-img">
                                        <ul class="multi-column-dropdown">

                                            <li><a href='#'><span>Myorder</a></li>
                                            <li><a href='#'><i class="fa fa-lock"></i>Change Password</a></li>
                                            <li><a href='logout.php'><i class="fa fa-sign-out"></i>Logout</a></li>
                                    </div>

                                </div>
                            </ul>
                        </li>

                    <?php

                    } else {
                        echo "<li><a href='login.php'>Login</a></li>";
                    }
                    ?>
                    <li><a href="cart.php">Cart</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>