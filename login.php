<?php
if (array_key_exists("button_to_log",$_POST)) {
  $username = htmlspecialchars($_POST["Username"]);
  $password = htmlspecialchars($_POST["Password"]);
}
echo $username;
 ?>
