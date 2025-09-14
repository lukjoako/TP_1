class Obstaculo extends GameObject {
  float velocidad;
  
  Obstaculo(float x, float y) {
    super(x, y, 40, 20, color(255, 0, 0));
    velocidad = random(3, 7);
  }
  
  void actualizar() {
    posicion.y += velocidad;
  }
  
  boolean estaFuera() {
    return posicion.y > height + tamano.y;
  }
  
  void reiniciar() {
    posicion.x = random(tamano.x, width - tamano.x);
    posicion.y = random(-100, -20);
    velocidad = random(3, 7);
  }
}
