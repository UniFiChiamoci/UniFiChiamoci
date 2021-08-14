<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Unifichiamoci</title>
    <link rel="stylesheet" href="../css/login.css" type="text/css">
  </head>
  <body>
    <script src="../js/login.js" charset="utf-8"></script>
      <div class="major">
        <form method="POST" action="login.php">
          <h1 class="title">Accedi</h1>
          <h1>Username</h1>
          <input type="text" name="username" id="username_input">
          <h1>Password</h1>
          <input type="password" name="Password" id="password_input">
          <br>
          <input type="submit" name="button_to_log" value="Accedi" class="accesso">
        </form>
        <input type="submit"name="password_view" value="Mostra Password" onclick="change_view();" class="viewchanger">
      </div>
      <?php
      $username = htmlspecialchars($_REQUEST["username"]);
      $password = htmlspecialchars($_REQUEST["Password"]);
      //http://localhost:8888/GitHub/Unifichiamoci/php/login.php
      $db_host = 'localhost';
      $db_user = 'root';
      $db_password = 'root';
      $db_db = 'information_schema';
      $db_port = 8889;

      $mysqli = new mysqli(
        $db_host,
        $db_user,
        $db_password,
        $db_db
      );

      if ($mysqli->connect_error) {
        echo 'Errno: '.$mysqli->connect_errno;
        echo '<br>';
        echo 'Error: '.$mysqli->connect_error;
        exit();
      }

      echo 'Success: A proper connection to MySQL was made.';
      echo '<br>';
      echo 'Host information: '.$mysqli->host_info;
      echo '<br>';
      echo 'Protocol version: '.$mysqli->protocol_version;

      $mysqli->close();
       ?>
    <p id="error">Username o password errati.<br> Se il problema persiste, contattare l'amministratore</p>
  </body>
</html>
