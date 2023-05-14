PImage img1, img2, img3;
String[] text1 = {"Esto", "es un", "P51"};
String[] text2 = {"Un avion caza", "Estadounidense", "Creado para luchar"};
String[] text3 = {"en la segunda guerra mundial.", "Y se construyeron", "Casi 16000 Unidades"};
int palabra = 0; 
int temporizador = 5*60;
int contador = 0; 
float tamanio = 44;
boolean pantallaFinal = false;
boolean boton = false;

void setup() {
  size(640, 480);
  frameRate(60);
  img1 = loadImage("image1.jpg");
  img2 = loadImage("image2.jpg");
  img3 = loadImage("image3.jpg");
}

void draw() {
  background(0);
  fill(255);
  tamanio = tamanio+0.1;
  textSize(tamanio);
  if (contador >= 0 && contador < temporizador) {
    image(img1, 0, 0, width, height);
    texto(text1);
  } else if (contador >= temporizador && contador < temporizador*2) {
    image(img2, 0, 0, width, height);
    texto(text2);
  } else if (contador >= temporizador*2 && contador < temporizador*3) {
    image(img3, 0, 0, width, height);
    texto(text3);
  }
  contador++;
  if (contador >= temporizador*3) {
    pantallaFinal = true;
    image(img3, 0, 0, width, height);
    rect(width/2-50,380,100,25);
    fill(0);
    textSize(24);
    textAlign(LEFT);
    text("Reiniciar", 273, 402);
  }
}

void texto(String[] text) {
  int textX = width/2;
  int textY = height/2;
  textSize(tamanio);
  textAlign(CENTER);
  fill(255);
  text(text[palabra], textX, textY);
  if (contador % 100 == 0 && contador > 0) { 
    palabra = (palabra + 1) % text.length; 
    tamanio = 44;
  }
}

void mousePressed() {
  if(pantallaFinal) {
    if(mouseX>270 && mouseX<370 && mouseY>380 && mouseY<405) {
      contador = 0;
      palabra = 0;
      pantallaFinal = false;
      
    }
  } 
}
