function change_view() {
  var button = document.getElementsByName('password_view');
  if (button.getAttribute("value") =  "Mostra Password" && button.getAttribute("type") = "password") {
    button.setAttribute("value", "Nascondi Password");
    button.setAttribute("type","text");
  }
  if (button.getAttribute("value") = "Nascondi Password" && button.getAttribute("type") = "text") {
    button.setAttribute("value", "Mostra Password");
    button.setAttribute("type","password");
  }
}
console.log(2);
