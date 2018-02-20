<div class="content-wrapper panel">
    <div class='panel-heading'>
    </div>
    <div class='panel-body'>
        <div class="display-animation text-bold">
            <div class="row">




                <div class="display-animation">
                    <div class="row image-row margin-bottom-40">
                        <div class="col-md-4">
                            <div class="card tile card-dashboard-info card-teal material-animate">
                                <div class="card-body">
                                    <div class="card-icon"><i class="fa fa-sitemap"></i></div><!--.card-icon-->
                                    <h4>Departments</h4>
                                    <p class="result"><?php echo $departments_count; ?></p>
                                </div>
                            </div><!--.card-->
                        </div>
                        <div class="col-md-4">
                            <div class="card tile card-dashboard-info card-light-blue material-animate">
                                <div class="card-body">
                                    <div class="card-icon"><i class="fa fa-user-md"></i></div><!--.card-icon-->
                                    <h4>Doctors</h4>
                                    <p class="result"><?php echo $doctor_count; ?></p>
                                </div>
                            </div><!--.card-->
                        </div>
                        <div class="col-md-4">
                            <div class="card tile card-dashboard-info card-blue-grey material-animate">
                                <div class="card-body">
                                    <div class="card-icon"><i class="fa fa-thumbs-o-up"></i></div><!--.card-icon-->
                                    <h4>Patients Say</h4>
                                    <p class="result"><?php echo $patients_say_count; ?></p>
                                </div>
                            </div><!--.card-->

                        </div><!--.col-->

                        

                        <div class="col-md-4">
                            
                            <?php 
                                if(!empty($departments))
                                {
                                    foreach($departments as $val)
                                    { ?>
                                        <div class="card tile card-friend material-animate">
                                            <div class="friend-content">
                                                <p class="title"><?php echo $val->en_title; ?></p>
                                                <p><a href="user-profile.html"><?php echo $val->status==0?'Active':'Inactive'; ?></a></p>
                                            </div><!--.friend-content-->
                                        </div><!--.card-->
                                   <?php } } ?>
                            

                        </div><!--.col-->
                        <div class="col-md-4">
                            <?php 
                                if(!empty($doctor))
                                {
                                    foreach($doctor as $val)
                                    { ?>
                            <div class="card tile card-friend material-animate">
                                <div class="friend-content">
                                    <p class="title"><?php echo $val->en_name; ?></p>
                                    <p><?php echo $val->en_job_title; ?></p>
                                    <p class=""><?php echo $val->en_academic; ?></p>
                                </div><!--.friend-content-->
                            </div><!--.card-->
                            <?php } } ?>
                            
                            
                        </div><!--.col-->
                        <div class="col-md-4">
                             <?php 
                                if(!empty($patients_say))
                                {
                                    foreach($patients_say as $val)
                                    { ?>
                            <div class="card tile card-friend material-animate">
                                <a href="user-profile.html"><img src="../../assets/globals/img/faces/1.jpg" class="user-photo" alt=""></a>
                                <div class="friend-content">
                                    <p class="title"><?php echo $val->en_name; ?></p>
                                    <p><?php echo $val->en_job_title; ?></p>
                                    <p><?php echo strip_tags($val->en_comment); ?></p>
                                </div><!--.friend-content-->
                            </div><!--.card-->
                             <?php } } ?>
                            
                        </div><!--.col-->

                    </div><!--.row-->
                </div><!--.display-animation-->

                
            </div><!--.col-->
        </div>
    </div><!--.row-->
