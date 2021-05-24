<?php
if (array_key_exists("button_to_log",$_POST)) {
  echo htmlspecialchars($_POST["Username"]);
  echo "<br>";
  echo htmlspecialchars($_POST["Password"]);
}
 ?>
