<?php
require 'includes/admin_header.php';

?>

    <div id="wrapper">

        <!-- Navigation -->
        <?php
        require 'includes/admin_navigation.php';
        ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Welcome to our first project!
                            <small>Author</small>
                        </h1>
                        
                        

                        <?php  
                        
                            if (isset($_GET['source'])) {
                                $source = $_GET['source'];
                            }
                            else{
                                $source = '';
                            }

                            switch($source){
                                case 'add_post';
                                require 'includes/add_post.php';
                                break;

                                case 'edit_post';
                                require 'includes/edit_post.php';
                                break;
                               
                                default:
                                require 'includes/view_posts.php';
                                break;
                            }
                        

                            
                        
                        ?>


                        
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

<?php
require 'includes/admin_footer.php';
?>