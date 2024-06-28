<?php
session_start();
include './connection.php';

if (!isset($_SESSION['uid'])) {
    header("location:login.php");
}

if ($_POST) {
    $name = $_POST['name'];
    $mobile = $_POST['mobile'];
    $date = $_POST['date'];
    $address = $_POST['address'];
    $payment = $_POST['payment'];
    $status = "Confirm";
    $uid = $_SESSION['uid'];

    //Shipping Order
    $orderq = mysqli_query($connection, "insert into tbl_order_master(order_date,order_status,user_id,shipping_name,shipping_mobile,shipping_address,payment_mode) 
    values('{$date}','{$status}','{$uid}','{$name}','{$mobile}','{$address}','{$payment}')");

    //Inserted Record ID
    $orderid = mysqli_insert_id($connection);

    //Order Details
    //Fetch Cart Data
    $cartq = mysqli_query($connection, "select * from tbl_cart where user_id='{$uid}'");
    while ($cartdata = mysqli_fetch_array($cartq)) {
        //Cart Data
        $pid = $cartdata['product_id'];
        $qty = $cartdata['product_qty'];

        //Product Data
        $pq = mysqli_query($connection, "select * from tbl_product where product_id='{$pid}'");
        $pdata = mysqli_fetch_array($pq);
        $price = $pdata['product_price'];

        //Order Details Add
        $orderdetailq = mysqli_query($connection, "insert into tbl_order_details(order_id,product_id,product_qty,product_price)
        values('{$orderid}','{$pid}','{$qty}',{$price})");

        //Cart Remove
        mysqli_query($connection, "delete from tbl_cart where cart_id='{$cartdata['cart_id']}'");
    }
    header("location:thanks.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body style="text-align:center;">

    <form method="post">
        <h2>Shipping Details</h2>

        <div>
            Name: <input type="text" name="name" required>
        </div>
        <div>
            Mobile: <input type="text" name="mobile" required>
        </div>
        <div>
            Order Date: <input type="date" name="date" required>
        </div>
        <div>
            Address:
        </div>
        <div>
            <textarea cols="21" name="address" required></textarea>
        </div>


        <h2>Payment Mode</h2>
        Payment: <input type="radio" name="payment" value="Cash" required>Cash
        <input type="radio" name="payment" value="Online" required>Online
        <input type="radio" name="payment" value="Net Banking" required>Net Banking
        <select name="bank">
            <option value="" disabled selected>Choose an Option</option>
            <optgroup>
                <option value="ATP DIRECT">Airtel Payments Bank</option>
                <option value="UTI DIRECT">Axis Bank</option>
                <option value="HDF DIRECT">HDFC Bank</option>
                <option value="ICI DIRECT">ICICI Bank</option>
                <option value="162 DIRECT">Kotak Bank</option>
                <option value="SBI DIRECT">State Bank of India</option>
            </optgroup>
            <optgroup>
                <option value="ALB DIRECT">Allahabad Bank</option>
                <option value="ADB DIRECT">Andhra Bank</option>
                <option value="BOI DIRECT">Bank of India</option>
                <option value="BOM DIRECT">Bank of Maharashtra</option>
                <option value="CNB DIRECT">Canara Bank</option>
                <option value="CSB DIRECT">Catholic Syrian Bank</option>
                <option value="CBI DIRECT">Central Bank of India</option>
                <option value="CUB DIRECT">City Union Bank</option>
                <option value="CRP DIRECT">Corporation Bank</option>
                <option value="COB DIRECT">Cosmos Bank</option>
                <option value="DCB DIRECT">DCB Bank Ltd</option>
                <option value="DBK DIRECT">Deutsche Bank</option>
                <option value="DLB DIRECT">Dhanlakshmi Bank</option>
                <option value="FBK DIRECT">Federal Bank</option>
                <option value="IDB DIRECT">IDBI Bank</option>
                <option value="IDN DIRECT">IDFC FIRST Bank</option>
                <option value="ING DIRECT">ING Vysya Bank</option>
                <option value="INB DIRECT">Indian Bank</option>
                <option value="IOB DIRECT">Indian Overseas Bank</option>
                <option value="IDS DIRECT">IndusInd Bank</option>
                <option value="JKB DIRECT">Jammu &amp; Kashmir Bank</option>
                <option value="JSB DIRECT">Janata Sahakari Bank</option>
                <option value="KBL DIRECT">Karnataka Bank Ltd</option>
                <option value="KVB DIRECT">Karur Vysya Bank</option>
                <option value="LVC DIRECT">Laxmi Vilas Bank - Corporate</option>
                <option value="LVR DIRECT">Laxmi Vilas Bank - Retail</option>
                <option value="OBC DIRECT">Oriental Bank of Commerce</option>
                <option value="PNY DIRECT">PNB YUVA Netbanking</option>
                <option value="CPN DIRECT">Punjab National Bank - Corporate Banking</option>
                <option value="PNB DIRECT">Punjab National Bank - Retail Banking</option>
                <option value="SWB DIRECT">Saraswat Bank</option>
                <option value="SVC DIRECT">Shamrao Vitthal Co-operative Bank</option>
                <option value="SIB DIRECT">South Indian Bank</option>
                <option value="SCB DIRECT">Standard Chartered Bank</option>
                <option value="SBJ DIRECT">State Bank of Bikaner &amp; Jaipur</option>
                <option value="SBH DIRECT">State Bank of Hyderabad</option>
                <option value="SBM DIRECT">State Bank of Mysore</option>
                <option value="SBP DIRECT">State Bank of Patiala</option>
                <option value="SBT DIRECT">State Bank of Travancore</option>
                <option value="SYD DIRECT">Syndicate Bank</option>
                <option value="TMB DIRECT">Tamilnad Mercantile Bank Ltd.</option>
                <option value="UBI DIRECT">Union Bank of India</option>
                <option value="UNI DIRECT">United Bank of India</option>
                <option value="YBK DIRECT">Yes Bank Ltd</option>
            </optgroup>
        </select>
        </br>

        <img border='1' src="images/qrcode.jpg" width="100"></br>
        <input type="submit" value="Proceed">
        <input type="reset" value="Clear">
    </form>

    <style>
        body {
            background-image: url(images/shipping.jpg);
            background-repeat: no-repeat;
            background-size: 100%;
            text-align: center;
            font-family: Arial, sans-serif;
        }

        form {
            margin: 0 auto;
            max-width: 400px;
        }

        h2 {
            background-color: lightsalmon;
            border-radius: 4px;
            margin-bottom: 10px;
            padding: 4px;
            font-style: oblique;
            font-weight: bold;
            font-family: "Mulish", sans-serif;
        }

        div {
            margin-bottom: 15px;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }

        input[type="text"],
        input[type="date"],
        textarea,
        select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            text-align: center;
        }

        input[type="radio"],
        input[type="checkbox"] {
            margin-right: 5px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        input[type="reset"] {
            background-color: #ec3a3a;
            color: white;
            cursor: pointer;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
        }

        input[type="reset"]:hover {
            background-color: #a04545;
        }

        img {
            margin-top: 20px;
        }
    </style>

</body>

</html>