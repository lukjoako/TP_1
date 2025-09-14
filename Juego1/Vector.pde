class Vector {
  float x, y;
  
  Vector(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  Vector copia() {
    return new Vector(x, y);
  }
}
