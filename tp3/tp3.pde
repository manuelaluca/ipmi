//https://youtu.be/OffpO473dL4
PImage obra;                                                          // Manuela Luca 119071/8
int num = 10; // cuadrados y circulos por fila y columna             // Comisión 2
int tam = 40; // Tamaño de cada cuadrado
color n;
color b;

void setup() {
  size(800, 400);
  
 obra = loadImage ( "opart.jpg" );
 n= color (0);
 b = color (255);
}

void draw() {
  image (obra, 0, 0);
  println (mouseX + " / " + mouseY);

int pantalla = width/2;
 for (int i = 0; i < num; i++) {
    for (int j = 0; j < num; j++) {
      int x = j * tam + pantalla;
      int y = i * tam;
    dibujarCuadrado (i, j);
    
    float nuevoTamaño = calcularTamaño(x + tam / 2, y + tam / 2);

   
      // Dibujar el círculo con el color opuesto al cuadrado
      if ((i + j) % 2 == 0) fill(b); 
      else fill(n); 
      
    ellipse(x + tam/2, y + tam/2, nuevoTamaño, nuevoTamaño);}
 
    }
}

void mousePressed () {
 n = color(random(255), random(255), random(255));
 b = color(random (150), random (150), random (150));
}

void keyPressed (){
  tam --;
  num ++;
  
  if (key == 'r') {
   tam = 40;
   num = 10;
   n = color(0);
   b = color (255);
   } 
 
}
