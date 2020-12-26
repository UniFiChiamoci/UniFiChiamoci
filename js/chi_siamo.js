var index = 0;
var t;
slide();

function slide() {
  var i = 0;
  var images = document.getElementsByClassName("carica_101_images");
  for (i = 0; i < images.length; i++) {
    images[i].style.display = "none";
  }
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < dots.length; i++) {
    dots[i].style.backgroundColor = "white";
    dots[i].style.borderColor = "transparent";
  }
  index++;
  if (index > images.length) {
    index = 1;
  }
  if (index < 1) {
    index = images.length;
  }
  images[index - 1].style.display = "block";
  dots[index - 1].style.backgroundColor = "transparent";
  dots[index - 1].style.borderColor = "white";
  t = setTimeout(slide, 3000);
}

function slide_to_right() {
  clearTimeout(t);
  slide();
}

function slide_to_left() {
  clearTimeout(t);
  index--;
  index--;
  slide();
}

function switch_to(n) {
  clearTimeout(t);
  index = n - 1;
  slide();
}
