function change_view() {
  var button = document.getElementById('password_input')
  if (button.getAttribute('type') == "password") {
    button.setAttribute('type',"text");
  }else if (button.getAttribute('type') == "text") {
    button.setAttribute('type',"password");
  }
  document.getElementById('error').style.display = 'block';
}

function bad_result(){
  document.getElementById('error').style.display = 'block';
}
