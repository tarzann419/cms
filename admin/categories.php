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
                        <div class="col-xs-6">


                            <?php
                                insert_categories();
                            ?>

                           
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="cat_title"> Add Category</label>
                                <input class="form-control" type="text" name="cat_title">
                            </div>

                            <div class="form-group">
                                <input class="btn btn-primary" type="submit" name="submit" value="Add Category">
                            </div>


                        </form>

                        
                        <?php 
                        //UPDATE CATEGORIES
                        if (isset($_GET['edit'])) {
                            $cat_id = $_GET['edit'];
                            
                            require 'includes/update_categories.php'; 
                        }
                        ?>
                        </div>


                        


                        




                        <div class="col-xs-6">




<?php



?>

                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Category title</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                
 <?php
// find all categorires query
findAllCategories();
?>

        
<?php
    deleteCategories();
?>                        
                                    
                                   
                                </tr>
                                </tbody>
                            </table>


                        </div>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

<?php
require 'includes/admin_footer.php';
?>