Juego juego;

void setup() {
  size(400, 600);
  juego = new Juego();
}

void draw() {
  juego.actualizar();
  juego.dibujar();
}

void mousePressed() {
  juego.mousePresionado();
}

void keyPressed() {
  juego.teclaPresionada();
}
