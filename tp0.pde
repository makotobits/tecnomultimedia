PImage fotoAuto;

void setup(){
  size(800, 400);
  background(90, 113, 24);
  fotoAuto = loadImage("autoblanco.jpg");
}

void draw(){
  image(fotoAuto, 0, 0);
  println (mouseX +"," + mouseY);
  fill(240, 250, 150);
  rect(400, 255, 400, 15);
  fill(148, 156, 157);
  rect(400, 270, 400, 130);
  fill(40, 43, 44);
  circle(488, 278, 90);
  circle(740, 285, 90);
  fill(225, 225, 225);
  circle(495, 275, 72);
  circle(746, 284, 68);
  beginShape();
  vertex(479, 304);
  vertex(472, 252);
  vertex(491, 191);
  vertex(500, 186);
  vertex(538, 123);
  vertex(617, 115);
  vertex(702, 123);
  vertex(730, 189);
  vertex(738, 193);
  vertex(746, 254);
  vertex(740, 307);
  vertex(607, 311);
  endShape(CLOSE);
  rect(475, 166, 25, 17);
  rect(729, 169, 25, 17);
  fill(20, 20, 20);
  beginShape();
  vertex(509, 184);
  vertex(542, 129);
  vertex(619, 122);
  vertex(698, 128);
  vertex(724, 187);
  vertex(620, 179);
  endShape(CLOSE);
  rect(561, 227, 80, 24, 10);
  rect(472, 255, 275, 10, 5);
  rect(493, 225, 50, 20);
  rect(662, 225, 50, 20);
  rect(506, 278, 190, 15);
  fill(242, 93, 34);
  triangle(712, 225, 722, 245, 712, 245);
  triangle(484, 245, 493, 225, 493, 245);
  fill( 250, 250, 250);
  circle(505, 235, 20);
  circle(527, 235, 20);
  circle(677, 235, 20);
  circle(699, 235, 20);

}
