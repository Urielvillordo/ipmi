/*uriel villordo legajo 120384/0
 DNI47020031
 https://youtu.be/PXvmaChvuoc*/
int x = 25;
int y = 10;
int redu = 1;
int a = 20;
int red = 5;
int ubic;
PImage i;
void setup() {
  size(800, 400);
  ellipseMode(CENTER);
  i = loadImage("M_25.jpg");
}
void draw() {
  ubic = width/y;
  background(0);
  circuloGrande(a);
  push();
  translate(width/2, 0);
  circulo(y, x);
  pop();
  image(i, 0, 0, 400, 400);
}
