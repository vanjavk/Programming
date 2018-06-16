<?php
session_start();
unset($_SESSION['name']);
unset($_SESSION['hp']);
unset($_SESSION['gold']);
unset($_SESSION['xp']);
unset($_SESSION['xy']);
unset($_SESSION['locations']);
header("Location: ../rpggame");
die();
?>