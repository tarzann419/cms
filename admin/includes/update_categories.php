<form action="" method="post">
                            <div class="form-group">
                                <label for="cat_title"> Edit Category</label>

                                <?php
                                
                                if (isset($_GET['edit'])) {

                                    $cat_id = $_GET['edit'];

                                    $query = "SELECT * FROM categories WHERE cat_id = $cat_id";
                                    $select_category_id = mysqli_query($connection, $query);

                                    while ($row = mysqli_fetch_assoc($select_category_id)) {
                                        $cat_id = $row['cat_id'];
                                        $cat_title = $row['cat_title'];

                                        ?>
                                        <input value="<?php if(isset($cat_title)){echo $cat_title;} ?>" class="form-control" type="text" name="cat_title">
                                    <?php }} ?>

                                    <?php

                                        // UPDATE CATEFORY
                                        if (isset($_POST['update_cat'])) {
                                            $get_cat_title = $_POST['cat_title'];
                                    
                                            $query = "UPDATE categories SET cat_title = '{$get_cat_title}' WHERE cat_id = {$cat_id} ";
                                            $update_query = mysqli_query($connection, $query);

                                            if (!$update_query) {
                                                die('query failed' . mysqli_error($connection));
                                            }
                                        }
                                        
                                    
                                    ?>
                                        
                                


                                
                                
                                
                            </div>

                            <div class="form-group">
                                <input class="btn btn-primary" type="submit" name="update_cat" value="Update Category">
                            </div>


                        </form>
