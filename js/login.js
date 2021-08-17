function change_view() {
  var button = document.getElementById('password_input')
  if (button.getAttribute('type') == "password") {
    button.setAttribute('type',"text");
  }else if (button.getAttribute('type') == "text") {
    button.setAttribute('type',"password");
  }
}
alert('banana');
