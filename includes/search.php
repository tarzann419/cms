<?php

///searching through the database

if (isset($_POST['submit'])) {
    $search = $_POST['search'];

    $query = "SELECT * FROM posts WHERE post_tags LIKE '%$search%' ";
    $query_base = mysqli_query($connection, $query);

    if (!$query_base) {
        die('query failed' . mysqli_error($connection));
    }

    $count = mysqli_num_rows($query_base);

    if ($count == 0) {
        echo '<h1> NO RESULT</h1>';
    }
    else {
        echo 'SOME RESULT';
    }

}




    


?>