class Juego {
  constructor(fondos) {
    this.chicos = new Chicos(width * 0.5, 400);
    this.mama = [];
    this.estado = 0; // 0 = Inicio, 1 = Jugando, 2 = Perdiste, 3 = Ganaste
    this.fondo = fondos;
    this.iniciarMama(5);
  }

  iniciarMama(cantidad) {
    // Crear una lista de objetos Mama
    for (let i = 0; i < cantidad; i++) {
      this.mama.push(new Mama());
    }
  }

  actualizarMama() {
    // Actualizar posición y estado de las "mamas"
    if (this.estado === 1) {
      for (let i = this.mama.length - 1; i >= 0; i--) {
        this.mama[i].mover();
        this.mama[i].dibujar();
        this.chicos.calcularColision(this.mama[i]);
      }
      this.perder();
      this.ganar();
    }
  }

  dibujar() {
    // Mostrar el fondo y el estado del juego
    if (this.estado === 0) {
      image(this.fondo[0], 0, 0);
      textSize(20);
      fill(255);
      text("Ayuda a Phineas y Ferb a evitar que sean castigados por su mamá.\nEsquiva a Linda y gana.\n\nPRESIONA LA TECLA DE ESPACIO PARA INICIAR!", 50, 40, 550);
    } else if (this.estado === 1) {
      image(this.fondo[1], 0, 0);
      this.chicos.dibujar();
      textSize(15);
      fill(255);
      text("Vidas: " + this.chicos.vida, 520, 450);
      text("Puntos: " + this.chicos.puntos, 20, 450);
    } else if (this.estado === 2) {
      image(this.fondo[2], 0, 0);
      fill(255);
      text("PERDISTE\n\nPhineas y Ferb quedarán castigados durante todo el verano", 20, 18, 590);
    } else if (this.estado === 3) {
      image(this.fondo[3], 0, 0);
      text("LO LOGRASTE\nPhineas y Ferb disfrutarán de su verano", 20, 20, 580);
    }
  }

  perder() {
    if (this.estado === 1 && this.chicos.vida <= 0) {
      this.estado = 2;
    }
  }

  ganar() {
    if (this.estado === 1 && this.chicos.puntos >= 500) {
      this.estado = 3;
    }
  }

  teclaPresionada(keyCode) {
    if (keyCode === 32 && this.estado === 0) { // Tecla de espacio para iniciar
      this.estado = 1;
    }
  }
}
