<div class="mn_head_cont">
    <div class="subpage_header" style="background-image: url('<?php echo assets_path() . 'images/dep_image/' . $department->id . '/' . $department->dep_image; ?>')">
        <div class="container">
            <div class="hd_main_cont">
                <div class="header_content">
                    <div class="header_ttle"><?php echo $department->{$lang . '_image_title'}; ?></div>
                    <div class="header_desc"><?php echo $department->{$lang . '_image_description'}; ?></div>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="main_sction">
    <div class="container">
        <div class="sin_dep_cont">
            <div class="sin_dep_ttle"><?php echo $department->{$lang.'_title'};?></div>
            <div class="sin_dep_desc">
                <?php echo $department->{$lang.'_description'};?>
                </div>
        </div>
        <div class="sin_dep_cont">
            <div class="sin_dep_ttle"><?=site_text('Department Doctors', 'أطباء القسم');?></div>
            <div class="dep_doc_cont">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="dep_sin_doc text-center">
                            <div class="dep_ttle"><?=site_text('Dermatology Dermatology Dermatology Dermatology Dermatology Dermatology', 'الأمراض الجلدية الأمراض الجلدية الأمراض الجلدية الأمراض الجلدية الأمراض الجلدية');?></div>
                            <div class="doc_img" style="background-image: url('<?php echo assets_path() .'images/depart_serv/dep_doc_01.jpg';?>')"></div>
                            <div class="doc_detls">
                                <div class="doc_detls_name"><?=site_text('Dr. Halwani Bahja Halwani Bahja Halwani Bahja Halwani Bahja Halwani Bahja', 'د. حلواني بهجة حلواني بهجة حلواني بهجة حلواني بهجة حلواني بهجة');?></div>
                                <div class="doc_detls_spec"><?=site_text('Dermatology Specialist Dermatology Specialist Dermatology Specialist Dermatology Specialist', 'اخصائي امراض جلدية اخصائي امراض جلدية اخصائي امراض جلدية اخصائي امراض جلدية');?></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="dep_sin_doc text-center">
                            <div class="dep_ttle"><?=site_text('Dermatology', 'الأمراض الجلدية');?></div>
                            <div class="doc_img" style="background-image: url('<?php echo assets_path() .'images/depart_serv/dep_doc_01.jpg';?>')"></div>
                            <div class="doc_detls">
                                <div class="doc_detls_name"><?=site_text('Dr. Halwani Bahja', 'د. حلواني بهجة');?></div>
                                <div class="doc_detls_spec"><?=site_text('Dermatology Specialist', 'اخصائي امراض جلدية');?></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="dep_sin_doc text-center">
                            <div class="dep_ttle"><?=site_text('Dermatology', 'الأمراض الجلدية');?></div>
                            <div class="doc_img" style="background-image: url('<?php echo assets_path() .'images/depart_serv/dep_doc_01.jpg';?>')"></div>
                            <div class="doc_detls">
                                <div class="doc_detls_name"><?=site_text('Dr. Halwani Bahja', 'د. حلواني بهجة');?></div>
                                <div class="doc_detls_spec"><?=site_text('Dermatology Specialist', 'اخصائي امراض جلدية');?></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="sin_dep_cont">
            <div class="sin_dep_ttle"><?=site_text('common diseases', 'الأمراض الشائعة');?></div>
            <div class="dep_doc_cont">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="dep_sin_doc text-center dep_sin_diseases">
                            <a data-fancybox="com_dis_img" data-src="#com_dis_01">
                                <div class="doc_img" style="background-image: url('<?php echo assets_path() .'images/depart_serv/common_diseases/com_dis_01.jpg';?>')"></div>
                                <div class="doc_detls">
                                    <div class="doc_detls_name"><?=site_text('Cold Sores', 'القروح الباردة');?></div>
                                    <div class="doc_detls_spec"><?=site_text('What Are Cold Sores?', 'ما هي القروح الباردة؟');?></div>
                                </div>
                            </a>
                            <div class="dis_hidden_content" id="com_dis_01">
                                <div class="com_dis_ppcont">
                                    <div class="dis_det_img">
                                        <img class="img-responsive center-block" src="img/depart_serv/common_diseases/com_dis_01.jpg">
                                    </div>
                                    <div class="dis_det_desc">
                                        <div class="dis_name_ttle"><?=site_text('Cold Sores', 'القروح الباردة');?></div>
                                        <div class="sin_dis_sec">
                                            <div class="sin_dis_ttle"><?=site_text('What Are Cold Sores?', 'ما هي القروح الباردة؟');?></div>
                                            <div class="sin_dis_txt"><?=site_text('Despite the name, when you get painful blisters called cold sores, don\'t blame your cold. Cold sores are caused by a virus, but not the kind that makes you sniffle and sneeze. Instead, they happen because of an infection with the herpes simplex virus (HSV).', 'على الرغم من الاسم، عندما تحصل على بثور مؤلمة تسمى القروح الباردة، لا تلوم البرد. وتسبب القروح الباردة فيروس، ولكن ليس هذا النوع الذي يجعلك سنيفل والعطس. بدلا من ذلك، تحدث بسبب عدوى فيروس الهربس البسيط (HSV).');?></div>
                                        </div>
                                        <div class="sin_dis_sec">
                                            <div class="sin_dis_ttle"><?=site_text('Symptoms', 'الأعراض');?></div>
                                            <div class="sin_dis_txt"><?=site_text('Cold sores, also called fever blisters, can show up anywhere on your body. They\'re most likely to appear on the outside of your mouth and lips, but you can also find them on your nose, cheeks, or fingers. After the blisters form, you may notice that they break and ooze.', 'القروح الباردة، وتسمى أيضا بثور الحمى، يمكن أن تظهر في أي مكان على جسمك. انهم على الأرجح أن تظهر على السطح الخارجي من الفم والشفتين، ولكن يمكنك أيضا العثور عليها على أنفك، الخدين، أو الأصابع. بعد شكل بثور، قد تلاحظ أنها كسر ونز.');?></div>
                                        </div>
                                        <div class="sin_dis_sec">
                                            <div class="sin_dis_ttle"><?=site_text('Cold Sores treatment', 'علاج القروح الباردة');?></div>
                                            <div class="sin_dis_txt"><?=site_text('If you’ve ever had a cold sore, you know the signs. It starts with the tingling, then the edge of your lip or the corner of your mouth begins to burn. Then the outbreak: An ugly red sore appears. A few days later it breaks open and crusts over. They can turn up inside your mouth, too, causing pain along with white splotches.', 'إذا كان لديك أي وقت مضى التهاب البرد، وكنت أعرف علامات. ويبدأ مع وخز، ثم حافة الشفاه أو زاوية فمك يبدأ في حرق. ثم تفشي المرض: ظهور قرحة حمراء قبيحة. بعد بضعة أيام يكسر مفتوح وقشور أكثر. يمكن أن تتحول داخل فمك، أيضا، مما تسبب في الألم جنبا إلى جنب مع البقع البيضاء.');?></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>