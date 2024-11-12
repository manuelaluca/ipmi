let objJuego;
let fondos = [];

function preload() {
  // Cargar las imágenes del fondo antes de iniciar el juego
  for (let i = 0; i < 4; i++) {
    fondos.push(loadImage('data/fondo' + i + '.png'));
  }
}

function setup() {
  createCanvas(640, 480);
  objJuego = new Juego(fondos);
}

function draw() {
  background(220);
  objJuego.dibujar();
  objJuego.actualizarMama();
}

function keyPressed() {
  objJuego.teclaPresionada(keyCode);

  if (keyCode === LEFT_ARROW) {
    objJuego.chicos.moverIzquierda();
  } else if (keyCode === RIGHT_ARROW) {
    objJuego.chicos.moverDerecha();
  }

  // Presionar "r" para reiniciar el juego
  if (key === 'r') {
    objJuego = new Juego(fondos);
  }
}
