PFont fuente;
int pantalla;
int segundos;
int x, y, ancho, alto;
int py, px, X, Y;
String director;
String personajes;
boolean activo;
PImage A, B, C, D;
void setup() {
 size(640, 480);
 fuente = loadFont("inkfree.vlw");
 director = "DIRECTOR Charles Henry Selick";
 personajes = "///////REPARTO////////Coraline Jones Wybie Lovat";
   X = 1;
   Y = 1;
   py = 0;
   px = 640;
   x = 400;
   y = 300;
   ancho = 200;
   alto = 200;
   pantalla =1;
   textFont(fuente, 33 );
  textSize(45);
  activo = false;
  A = loadImage("coraline casa.png");
  B = loadImage("pantalla 1.png");
  C = loadImage("pantalla 2.png");
  D = loadImage("pantalla 3.png");
}
void draw(){
  if (pantalla==1) {
  fill(255);
  image(A, 0, 0, 640, 480);//imagen  
  text("Coraline", 50, 50);
  fill(255, 0, 0);
  text("start", 450, 350, 500, 400);
  fill(255, 0, 0, 25);
  noStroke();
  rect(x, y, ancho, alto);
  
  }
  else if (pantalla==2) {
  background(0, 255, 0);//verde
  image(B, 0, 0, 640, 480); fill(255, 0, 0);
  text(director, 200, py, 300, 400);
  if (py<100) {
    py ++;
  }
  } else if (pantalla==3) {
    background(255);//negro
    image(C, 0, 0, 640, 480);
    fill(255, 0, 0);
  text(personajes, px, 300, 440, 400);
  if (px>200) {
    px = px -3;
  }
  } else if (pantalla==4) {
    background(0, 0, 255);//azul
    image(D, 0, 0, 640, 480);
    float tono = map(X, 250, 100, 255, 0);
    fill(255, 0, 0, tono);
    text("DENUEVO", 70, 200, X, Y);
    if (X<250) {
    X = X + 5;
    if (Y<250) {
    Y = Y + 5;
  }
}
    fill(0, 0, 0, 0);
    noStroke();
    rect(x, y, ancho, alto);
  }
  
  if (activo == true) {
    if (frameCount%60 == 0) {
      segundos++;
    }
  }
  if (segundos>0 && segundos <=1) {
    pantalla = 1;
  } else if (segundos>1 && segundos<= 4) {
    pantalla = 2;
  } else if (segundos >4 && segundos <7) {
    pantalla = 3;
  } else if (segundos>7) {
    pantalla = 4;
  }
  fill(100);
  text(segundos, 400, 50);
}
void mousePressed() {
  if(segundos>8){
    if (mouseX<250 && mouseX>=50 && mouseY< 250 && mouseY>=150) {
      activo = true;
    pantalla = 1;
    segundos = 0; 
    X = 1;
    Y = 1;
    py = 0;
    px = 640;
    x = 400;
    y = 300;
    ancho = 200;
    alto = 200;
    activo = false;
    }
  }
  if (mouseX>= x && mouseX< x+ancho && mouseY>y && mouseY< y+alto) {
      activo = true;
  }
}
