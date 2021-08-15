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
        //http://localhost:8888/GitHub/Unifichiamoci/php/login.php
        $username = htmlspecialchars($_REQUEST["username"]);
        $password = htmlspecialchars($_REQUEST["Password"]);
        $db_port = 8889;
        $mysqli = mysqli_connect('localhost','root','root','unifichiamoci');
        if (!$mysqli) {
          exit();
        }
        $result = mysqli_query($mysqli,"SELECT code, username, password FROM member", );
        if (mysqli_num_rows($result) > 0) {
          $check = False;
          while($row = mysqli_fetch_assoc($result)) {
            if ($row['username'] == $username) {
              if ($row['password'] == $password) {
                $member_id = $row['code'];
                $check = True;
                break;
              }
            }
          }
          if ($check == True) {
            // code...
          }else {
            // code...
          }
        }
        mysqli_close($mysqli);
       ?>
    <p id="error">Username o password errati.<br> Se il problema persiste, contattare l'amministratore</p>
  </body>
</html>
