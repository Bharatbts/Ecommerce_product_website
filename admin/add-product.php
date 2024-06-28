<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Database</title>
</head>

<body>
    <form method="post" enctype="multipart/form-data">
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" required></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" name="price" required></td>
            </tr>
            <tr>
                <td>Categoryid: </td>
                <td>
                    <?php
                    $connection = mysqli_connect("localhost", "root", "", "productdb");
                    $cq = mysqli_query($connection, "select * from tbl_category");
                    echo "<select name='txt1'>";
                    echo "<option value=''>Select</option>";
                    while ($row = mysqli_fetch_array($cq)) {
                        echo "<option value='{$row['category_id']}'>{$row['category_name']}</option>";
                    }
                    echo "</select>";
                    ?>
                </td>
            </tr>
            <tr>
                <td>Photo</td>
                <td><input type="file" name="file123" required></td>
            </tr>
            <tr>
                <td>Details: </td>
                <td><textarea name="details" required></textarea></td>
            </tr>
            <tr>
                <td><input type="submit" name="btn"></td>
                <td><button onclick="window.location='display.php';">View</button></td>
            </tr>
        </table>

    </form>
</body>

</html>

<?php
$connection = mysqli_connect("localhost", "root", "", "productdb");

if (isset($_POST['btn'])) {
    $name = $_POST['name'];
    $price = $_POST['price'];
    $category = $_POST['txt1'];
    $details = $_POST['details'];

    //Query
    $filename = $_FILES['file123']['name'];
    $filesource = $_FILES['file123']['tmp_name'];

    $q = mysqli_query($connection, "insert into tbl_product(product_name,product_price,category_id,product_photo,product_details)
    values('{$name}','{$price}','{$category}','{$filename}','{$details}')");

    //FileUpload
    $fq = move_uploaded_file($filesource, "uploads/" . $filename);
    if ($q) {
        echo "<script>alert('Record Added');</script>";
    }
}
