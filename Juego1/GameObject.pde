class GameObject {
  Vector posicion;
  Vector tamano;
  color colorObj;
  
  GameObject(float x, float y, float w, float h, color c) {
    posicion = new Vector(x, y);
    tamano = new Vector(w, h);
    colorObj = c;
  }
  
  void dibujar() {
    fill(colorObj);
    rect(posicion.x - tamano.x/2, posicion.y - tamano.y/2, tamano.x, tamano.y);
  }
  
  void actualizar() {
    // Método para ser sobrescrito por las subclases
  }
  
  boolean colisiona(GameObject otro) {
    return (abs(posicion.x - otro.posicion.x) * 2 < (tamano.x + otro.tamano.x)) &&
           (abs(posicion.y - otro.posicion.y) * 2 < (tamano.y + otro.tamano.y));
  }
}
