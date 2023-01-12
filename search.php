<?php require 'includes/header.php'; ?>

    <!-- Navigation -->
    <?php require 'includes/navigation.php'; ?>
    <?php //require 'includes/db.php'; ?>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-8">
<?php



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
            
            while ($row = mysqli_fetch_assoc($query_base)) {
                $post_title = $row['post_title'];
                $post_author = $row['post_author'];
                $post_image = $row['post_image'];
                $post_date = $row['post_date'];
                $post_content = $row['post_content'];
                        
                ?>

                <h1 class="page-header">
                    Page Heading
                    <small>Secondary Text</small>
                </h1>

                <!-- First Blog Post -->
                <h2>
                    <a href="#"><?php echo $post_title; ?></a>
                </h2>
                <p class="lead">
                    by <a href="index.php"><?php echo $post_author; ?></a>
                </p>
                <p><span class="glyphicon glyphicon-time"></span> <?php echo $post_date; ?></p>
                <hr>
                <img class="img-responsive" src="images/<?php echo $post_image; ?>" alt="">
                <hr>
                <p><?php echo $post_content; ?></p>
                <a class="btn btn-primary" href="#">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>

                <hr>



                <?php } 
    }

}
?>



                
            
                
                
                

                
                
            </div>

            <!-- Blog Sidebar Widgets Column -->
            <?php require 'includes/sidebar.php'; ?>

        </div>
        <!-- /.row -->

        <hr>


<?php require 'includes/footer.php'; ?>
