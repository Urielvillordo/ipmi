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
