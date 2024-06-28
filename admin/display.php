<?php
$connection = mysqli_connect("localhost", "root", "", "productdb");
$q = mysqli_query($connection, "select * from tbl_product");

$count = mysqli_num_rows($q);
echo "$count Record Found";

echo "<table border='1'>";
echo "<tr>";
echo "<th>ID</th>";
echo "<th>Name</th>";
echo "<th>Price</th>";
echo "<th>Category</th>";
echo "<th>Photo</th>";
echo "</tr>";

$row_count = 0;
while ($data = mysqli_fetch_array($q)) {
    $row_class = ($row_count % 2 == 0) ? 'even' : 'odd';
    $cq = mysqli_query($connection, "select * from tbl_category where category_id='{$data['category_id']}'");
    $cdata = mysqli_fetch_array($cq);
    echo "<tr class='$row_class'>";
    echo "<td>{$data['product_id']}</td>";
    echo "<td>{$data['product_name']}</td>";
    echo "<td>{$data['product_price']}</td>";
    echo "<td>{$cdata['category_name']}</td>";
    echo "<td><img src='uploads/{$data['product_photo']}' width='70'/></td>";
    echo "</tr>";
    $row_count++;
}
echo "</table>";
?>

<html>

<style>
    .odd {
        background-color: lightgrey;
    }

    .even {
        background-color: whitesmoke;
    }
</style>

<html>