function change_view() {
  var button = document.getElementById('password_input')
  if (button.getAttribute('type') == "password") {
    button.setAttribute("type","text");
    button.setAttribute("value","Nascondi Password");
  }else if (button.getAttribute('type') == "text") {
    button.setAttribute("type","password");
    button.setAttribute("value","Mostra Password");
  }
}
