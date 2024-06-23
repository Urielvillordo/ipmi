/*uriel villordo legajo 120384/0 
DNI47020031
LINK: https://youtu.be/j1A-xgT-J7Q*/
int cant = 20;
int redu = 1;
int x = 600;
int y = 400;
int X = 770;
int Y = 200;

PImage i;
void setup() {
  size(800, 400);
  ellipseMode(CENTER);
  i = loadImage("M_25.jpg");
}
void draw() {
  for (int tam = 900; tam>=cant; tam -= redu) {
    float colo = map(tam, 0, 255, 0, 255);
    float col = map(tam, 0, 255, 0, 255);
    if (redu<=20) {
      redu++;
    }
    if (redu>20 && redu<=23) {
      redu = 1;
    }
    stroke(50, 50, 100);
    fill(0, colo, col);
    ellipse(width/2+200, height/2, tam, tam);
    circulos(y+50, Y, tam/2);//isq
    circulos(x, 20, tam/2);//arriba
    circulos(x, y, tam/2);//abajo
    circulos(X, Y, tam/2);//derecha
  }
  for (int v = 900; v<=cant; v--) {
    for (int a = 900; a<=cant; a--) {
      float V = map(v, 0, 255, 0, 255);
      float A = map(a, 0, 255, 0, 255);
      if (v == cant) {
        v-=cant;
      }
      if (a == cant) {
        a-=cant;
      }
      fill(0, V, A);
      ellipse(width/2+200, height/2, 20, 20);
    }
  }
  image(i, 0, 0, 400, 400);
}
void circulos(float uX, float uY, float tam) {
  stroke(0, 50, 50, 50);
  float colo = map(tam, 0, 250, 200, 150);
  float col = map(tam, 0, 250, 200, 250);
  fill(0, colo, col, 30);
  ellipse(uX, uY, tam, tam);
}
void mousePressed() {
 cant = 20;
 redu = 1;
 x = 600;
 y = 400;
 X = 770;
 Y = 200;
}
