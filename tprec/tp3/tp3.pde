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
void circuloGrande(float canti) {
  for (int t = tam(200); t>=canti; t -= red) {
    float colo = map(t, 0, 255, 0, 150);
    float col = map(t, 0, 255, 0, 255);
    if (t<=200) {
      red++;
    } else {
      red = 5;
    }
    stroke(50, 100, 50);
    fill(0, colo, col);
    ellipse(width/2+200, height/2, t, t);
  }
}
void circulo(float can, float cant) {
  for (int i=0; i<can; i++) {
    for (int j=0; j<can; j++) {
      for (int tam = 100; tam>=cant; tam -= redu) {
        float colo = map(tam, 0, 100, 0, 100);
        float col = map(tam, 0, 100, 0, 100);
        if (frameCount%2 == 0) {
          redu++;
        }
        if (redu>30 && redu<=33) {
          redu = 1;
        }
        if ((i+j)%2==0) {
          stroke(50, 50, 100, 100);
          fill(0, colo, col, 0);
          ellipse(i*ubic+ubic/2, j*ubic+ubic/2, tam/2, tam/2);
        } else {
          stroke(50, 50, 100, 100);
          fill(0, colo, col, 0);
          ellipse(i*ubic+ubic/2, j*ubic+ubic/2, tam, tam);
        }
      }
    }
  }
}
int tam( int tam) {
  return mouseX + tam + tam/2;
}
void keyPressed() {
  x = 25;
  y = 10;
  redu = 1;
  a = 20;
  red = 5;
}
