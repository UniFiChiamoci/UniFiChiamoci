Choose your language:

- Italian
- English

Italian:

Qui di seguito è descritto come modificare i file relativi alla pagina chi siamo([chi_siamo.html](chi_siamo.html),[chi_siamo.css](chi_siamo.css),
[chi_siamo.js](chi_siamo.js)).
I cambiamenti da concessi senza modificare la struttura sono pochi e sono:

* Modificare l'immagine di sfondo centrale
* Aggiungere foto allo slideshow
* Rimuovere foto dallo slideshow

1) Modificare l'immagine di sfondo centrale :
Il riferimento all'immagine di sfondo centrale si trova in [chi_siamo.css](chi_siamo.css), a riga 3

```
background-image: url("../images/sfondocentralechisiamo.jpeg");
```

Modificare l'immagine è semplice: basta sostituire a `"../images/sfondocentralechisiamo.jpeg"` la path dell'immagine desiderata e il gioco è fatto.

2) Aggiungere foto allo slideshow
Per aggiungere foto allo slideshow è necessario andare all'interno del tag `<div class="carica_101">` nel file [chi_siamo.html](chi_siamo.html). All'interno del `div` si individuano dei dei `<div class="carica_101_images">`. Il numero di questi div è il numero di foto presenti nello slideshow e ad ogni foto è associato un div. Quindi per aggiungere un foto allo slideshow è necessario aggiungere un `<div class="carica_101_images">`. Per fare questo si consiglia di giungere fino all'ultimo di div di questa categoria e aggiungere il seguente testo

```
<div class="carica_101_images">
  <div class="opacity_maker"></div>
  <img src="#percorso_immagine" class="images">
  <h2 class="higher_text">testo_da_piazzare_in_alto(compito)</h2>
  <h2 class="lower_text">testo_da_piazzare_in_basso(nome)<br>testo_da_piazzare_in_basso(campo di studi)</h2>
</div>
```
La foto è già stata aggiunta allo slideshow, tuttavia è necessario aggiungere un puntino in basso per creare il collegamento diretto per l'immagine. Per fare ciò è necessario innanzitutto creare il puntino, poi regolare margini, bordo e grandezza del puntino in modo da rendere ottimale l'utilizzo da parte dell'utente in funzione del numero di puntini.

Aggiungere un puntino:
Per aggiungere un puntino bisogna andare all'ultima riga del `<div style="width: 492px;align-self:center; margin:auto; " class="d-flex p-2">` all'interno di `<div class="carica_101">` e aggiungere il seguente testo

```
<li class="nav-item" style="margin-right:2px">
  <span class="dot" onclick="switch_to(numero_del_puntino)"></span>
</li>
```
Il numero del puntino è il numero intero successivo a quello del `<li>` precedente. Per completare il tutto rimuovere il testo `style="margin-right:2px"` dal penultimo `<li>`, in modo che solo l'ultimo abbia il margine destro di 2 pixel.

Regolare margini, bordi e grandezza dei puntini:
Non ci sono norme precise su come regolare le caratteristiche dei puntini, varia tuto in base al numero di puntini. Comunque ecco qui le righe di codice in [chi_siamo.css](chi_siamo.css) che servono per modificare rispettivamente margini, bordi e grandezza dei puntini.

Margini:riga 131
```
  margin-right: 3px;
  margin-left: 3px;
```

le due caratteristiche devono avere lo stesso valore e equivalgono alla distanza tra i puntini

Bordi:riga 123

```
  border-width: 2px;
```
il valore indica lo spessore del bordo

Grandezza:riga 119

```
  height: 5px;
  width: 5px;
```
i valori presenti sono rispettivamente altezza e larghezza dei puntini e devono coincidere

3) Rimuovere foto dallo slideshow
Il processo è il medesimo di quello per aggiungere un'immagine solo che in questo caso bisogna cancellare un div, un puntino e regolare le caratteristiche dei puntini



English:

Following is described how to modify files relative to page "chi siamo"([chi_siamo.html](chi_siamo.html),[chi_siamo.css](chi_siamo.css),
[chi_siamo.js](chi_siamo.js)).
The changes that are allowed without modify the structure are a few and they are:

* Modify the central background image
* Add photos to the slideshow
* Remove photos from the slideshow

1) Modify the central background image :
The reference to the central background image is situated in [chi_siamo.css](chi_siamo.css), at line 3

```
background-image: url("../images/sfondocentralechisiamo.jpeg");
```

Modify the image is simple: you only need to substitute to `"../images/sfondocentralechisiamo.jpeg"` the path of the image you want.

2) Add photos to the slideshow
For add photos to the slideshow you need to go inside the tag `<div class="carica_101">` in the file [chi_siamo.html](chi_siamo.html). Inside the `div` there are some `<div class="carica_101_images">`. Th number of these divs is the number of photos in the slideshow. So for add photos to the slideshow you need to add a `<div class="carica_101_images">`. To do this we suggest to scroll until you see the last div of this category(or where you want add the image) and add the following text

```
<div class="carica_101_images">
  <div class="opacity_maker"></div>
  <img src="#image_path" class="images">
  <h2 class="higher_text">text_to_place_in_high(work)</h2>
  <h2 class="lower_text">text_to_place_in_low(name)<br>text_to_place_in_low(studies)</h2>
</div>
```
The photo has been added to the slideshow, but you need to add a dot in low to create the direct link to the image. To do this you need first to create the dot, and after this you regulate margins, border and size of the dot to make perfect the use of the page for the user, relative to the number of dots.

Add a dot:
For add a dot you need to go lo the last line of  `<div style="width: 492px;align-self:center; margin:auto; " class="d-flex p-2">` inside `<div class="carica_101">` and add the following text

```
<li class="nav-item" style="margin-right:2px">
  <span class="dot" onclick="switch_to(dot_number)"></span>
</li>
```
The dot number is the entire number following to the number of the previous `<li>`. Now, for complete the operation, remove the text `style="margin-right:2px"` from the second-last `<li>`, to make only the last dot have the right margin of 2 pixel.

Regulate margins, border and size of the dots:
There are no specific rules to regulate the features of the dots, everything changes relative to the number of dots. Reminding this, following there are the lines of code in [chi_siamo.css](chi_siamo.css) that you have to modify to change, in order, margins, border and size of the dots.

Margins:line 131
```
  margin-right: 3px;
  margin-left: 3px;
```

the two features must have the same value and they are congruent to the distance between the dots

Border:line 123

```
  border-width: 2px;
```

the value indicates the width of the border

Size:line 119

```
  height: 5px;
  width: 5px;
```

the values are the height and the width of dots and they must have the same value

3) Remove photos from the slideshow
The process is the same of adding a photo to the slideshow but in this case you need to eliminate a div and a dot instead of adding them.
