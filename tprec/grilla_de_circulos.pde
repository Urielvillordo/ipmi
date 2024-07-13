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
