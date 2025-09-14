class Cuadrado extends GameObject {
  float velocidad;
  
  Cuadrado(float x, float y) {
    super(x, y, 30, 30, color(0, 255, 0));
    velocidad = 10;
  }
  
  void moverIzquierda() {
    if (posicion.x - tamano.x/2 > 0) {
      posicion.x -= velocidad;
    }
  }
  
  void moverDerecha() {
    if (posicion.x + tamano.x/2 < width) {
      posicion.x += velocidad;
    }
  }
}
