<?php

defined('BASEPATH') OR exit('No direct script access allowed');
/* translate helper */
function t($line) {
    global $LANG;
    return ($t = $LANG->line($line)) ? $t : $line;
}