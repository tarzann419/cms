<table class="table table-bordered table-hovers">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Author</th>
                                    <th>Comment</th>
                                    <th>Email</th>
                                    <th>Status</th>
                                    <th>In Response to</th>
                                    <th>Date</th>
                                    <th>Approve</th>
                                    <th>Unapprove</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>

                            <tbody>
                            
                            <?php 
                            
                            $query = "SELECT * FROM comments";
                            $select_comment = mysqli_query($connection, $query);
                            
                            while ($row = mysqli_fetch_assoc($select_comment)) {
                                $comment_id = $row['comment_id'];
                                $comment_post_id = $row['comment_post_id'];
                                $comment_author = $row['comment_author'];
                                $comment_content = $row['comment_content'];
                                $comment_email= $row['comment_email'];
                                $comment_status = $row['comment_status'];
                                $comment_date = $row['comment_date'];


                                    echo '<tr>';
                                    echo "<td> {$comment_id} </td>";
                                    echo "<td> {$comment_author} </td>";
                                    echo "<td> {$comment_content} </td>";

                                    // $query = "SELECT * FROM categories WHERE cat_id = {$comment_category_id}";  //relating tables
                                    // $select_category_id = mysqli_query($connection, $query);

                                    // while ($row = mysqli_fetch_assoc($select_category_id)) {
                                    //     $cat_id = $row['cat_id'];
                                    //     $cat_title = $row['cat_title'];



                                    // echo "<td> {$cat_title} </td>";





                                    echo "<td> {$comment_email } </td>";
                                    echo "<td> {$comment_status} </td>";



                                    echo "<td> something else </td>";


                                    
                                    echo "<td> {$comment_date} </td>";
                                    echo "<td><a href='comments.php?approve='> APPROVE </a> </td>";
                                    echo "<td><a href='comments.php?unapprove='> UNAPPROVE </a> </td>";
                                    echo "<td><a href='comments.php?delete='> DELETE </a> </td>";
                                    
                                    

                                echo '</tr>';
                                    }

                            // }
                            ?>

                                
                            
                        </tbody>
                        </table>

                        <?php
                        
                        if (isset($_GET['delete'])) {
                            $the_comment_id = $_GET['delete'];

                            $query = "DELETE FROM comments WHERE comment_id = {$the_comment_id}";
                            $delete_query = mysqli_query($connection, $query);
                            header("Location: comments.php");
                        }

                        ?>