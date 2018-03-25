<?php
if(isset($_GET['lang'])) {
    $_GET['lang'];
    
}

$main_lang =['en'];


/*function site_text($english, $arabic = NULL) {

    return $english;
}*/
function site_text($english, $arabic) {
    if(lang('bf_language_direction') == 'en') {return $english;}else{return $arabic;}
}
    //Note: Don't Remove This Comment, I will Use it Again :)

?>