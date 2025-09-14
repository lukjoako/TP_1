
// Clase principal que controla el juego
class Juego {
  Cuadrado jugador;
  Obstaculo[] obstaculos;
  int totalObstaculos = 5;
  int puntuacion = 0;
  boolean juegoActivo = true;
  
  Juego() {
    jugador = new Cuadrado(width/2, height - 50);
    
    obstaculos = new Obstaculo[totalObstaculos];
    for (int i = 0; i < totalObstaculos; i++) {
      obstaculos[i] = new Obstaculo(random(40, width-40), random(-100, -20));
    }
  }
  
  void actualizar() {
    if (!juegoActivo) return;
    
    for (Obstaculo obs : obstaculos) {
      obs.actualizar();
      
      // Verificar colisión
      if (jugador.colisiona(obs)) {
        juegoActivo = false;
        return;
      }
      
      // Si el obstáculo sale de la pantalla, reiniciarlo
      if (obs.estaFuera()) {
        obs.reiniciar();
        puntuacion++;
      }
    }
  }
  
  void dibujar() {
    background(50);
    
    if (juegoActivo) {
      // Dibujar jugador y obstáculos
      jugador.dibujar();
      for (Obstaculo obs : obstaculos) {
        obs.dibujar();
      }
      
      // Mostrar puntuación
      fill(255);
      textSize(20);
      text("Puntuación: " + puntuacion, 20, 30);
    } else {
      // Pantalla de game over
      background(0);
      fill(255);
      textSize(40);
      textAlign(CENTER, CENTER);
      text("GAME OVER", width/2, height/2 - 50);
      textSize(20);
      text("Puntuación: " + puntuacion, width/2, height/2);
      text("Click para reiniciar", width/2, height/2 + 50);
    }
  }
  
  void reiniciar() {
    puntuacion = 0;
    juegoActivo = true;
    jugador = new Cuadrado(width/2, height - 50);
    
    for (int i = 0; i < totalObstaculos; i++) {
      obstaculos[i] = new Obstaculo(random(40, width-40), random(-100, -20));
    }
  }
  
  void mousePresionado() {
    if (!juegoActivo) {
      reiniciar();
    }
  }
  
  void teclaPresionada() {
    if (keyCode == LEFT) {
      jugador.moverIzquierda();
    } else if (keyCode == RIGHT) {
      jugador.moverDerecha();
    }
  }
}
