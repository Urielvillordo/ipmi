PImage P;
void setup() {
  size(800, 400);
  P = loadImage("zorro.png");
}
void draw() {
  image(P, 0, 0, 400, 400);
  noStroke();
  fill(200, 100, 0);
  ellipse(600, 300, 150,200);
  ellipse(650, 370, 250, 150);
  
  ellipse(550, 100, 50, 157);
  ellipse(650, 100, 50, 157);
  
  ellipse(600, 175, 150, 150);
  triangle(550, 150, 450, 200, 550, 250);
  triangle(650, 150, 650, 250, 750, 200);
  fill(250, 250, 250);
  triangle(660, 200, 540, 200, 600, 800);
   ellipse(550, 100, 50, 150);
   ellipse(650, 100, 50, 150);
  fill(200, 100, 0);
  triangle(620, 200, 580, 200, 600, 250);
  fill(0);
  ellipse(600, 240, 20, 20);
  ellipse(550, 200, 20, 20);
  ellipse(650, 200, 20, 20);
  
}
