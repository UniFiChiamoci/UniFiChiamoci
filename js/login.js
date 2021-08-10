function change_view() {
  var button = document.getElementById('password_input')
  if (button.getAttribute('type') == "password") {
    button.setAttribute('type',"text");
  }else if (button.getAttribute('type') == "text") {
    button.setAttribute('type',"password");
  }
}

function check_in_database(){
  var username = document.getElementById("username_input");
  var password = document.getElementById("password_input");
  
}
