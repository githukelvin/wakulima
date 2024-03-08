<?php
include("../incl/config.example.incl.php");
if (!defined(PAGE_URL))define ('PAGE_URL', '.');
include("auth.php");
$log = new logmein();
$log->encrypt = FALSE; //set encryption
//Log out
$log->logout();
header("location:../");

