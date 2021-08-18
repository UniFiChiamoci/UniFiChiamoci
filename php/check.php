<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <link rel="stylesheet" href="../css/login.css" type="text/css">
  </head>
  <body>
    <form class="invisible_form" action="login.php" method="GET" id="invisible_form">
      <input type="text" name="check_text" id="check_text" value="error">
    </form>
    <?php
      //http://localhost:8888/GitHub/Unifichiamoci/php/login.php
      try {
        $username = htmlspecialchars($_REQUEST["username"]);
        $password = htmlspecialchars($_REQUEST["Password"]);
        throw new \Exception("Error");
      } catch (\Exception $e) {
        if ($e=="Error") {
          echo $e;
        }else {
          $username = htmlspecialchars($_REQUEST["username"]);
          $password = htmlspecialchars($_REQUEST["Password"]);
        }
      }
      $db_port = 8889;
      $mysqli = mysqli_connect('localhost','root','root','unifichiamoci');
      if (!$mysqli) {
        exit();
      }
      $result = mysqli_query($mysqli,"SELECT code, username, password FROM member");
      if (mysqli_num_rows($result) > 0) {
        $check = False;
        while($row = mysqli_fetch_assoc($result)) {
          if ($row['username'] == $username) {
            if ($row['password'] == $password) {
              $member_id = $row['code'];// potrebbe sempre servire…
              $check = True;
              break;
            }
          }
        }
        if ($check == True) {
          header("Location: http://localhost:8888/GitHub/Unifichiamoci/home/home.html");
        }else {
          echo "<script>
          document.getElementById('check_text').value = 'error';
          document.getElementById('invisible_form').submit();
          </script>";
        }
      }
      mysqli_close($mysqli);
    ?>
  </body>
</html>
