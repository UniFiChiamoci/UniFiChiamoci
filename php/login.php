<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Unifichiamoci</title>
    <link rel="stylesheet" href="../css/login.css" type="text/css">
  </head>
  <body>
    <script src="../js/login.js" charset="utf-8"></script>
    <?php
    if (condition) {
      $username = htmlspecialchars("username_input")
      $password = htmlspecialchars("password_input")
    }
     ?>
    <div class="major">
      <form method="POST">
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
    <p id="error">Username o password errati.<br> Se il problema persiste, contattare l'amministratore</p>
  </body>
</html>
