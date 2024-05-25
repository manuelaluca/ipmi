String tateti;                                  // Manuela Luca 119071/8
float tam;                                      // Comisión 2
color colores;
float x ;
float posX;
float possX;

//rectángulo
int esquinaX1;
int esquinaY1 ;
int ancho ;
int alto ;

PImage imagen1; //pantalla 1
PImage imagen2; //pantalla 2
PImage imagen3; // pantalla 3
PImage imagen4; // pantalla 4
PFont font;

void setup (){
  size ( 640, 480 );
  font = loadFont ("Georgia-24.vlw");
  textFont (font, 22);
  textAlign( CENTER, CENTER );
  
  imagen1 = loadImage ( "juego.jpg");
  imagen2 = loadImage ( "tateti3.jpg");
  imagen3 = loadImage ( "tateti4.jpg");
  imagen4 = loadImage ("empate.jpg");
   
   
  tateti = "juego";
  tam = 4;
   x = 0 ;
   posX = 640 ;
   possX = 640;
  colores = color (200, 50, 0);
  esquinaX1 = 200;
  esquinaY1 = 100;
  ancho = 200;
  alto = 100;
}

void draw (){
   background (0);
  println (frameCount/60); //marca los segundos no exacto
   
   
  if (tateti. equals ("juego") ) {
     background ( 150, 200, 150 );
     if (tam < 22) {
     tam += 0.5 /10; }
     println (tam);
     image (imagen1, 0, 0); 
     textSize (tam);
    text (" el tateti es un juego de lápiz y papel entre dos jugadores: O y X, \n que marcan los espacios de un tablero de 3×3 alternadamente", 320, height/2); // \n le da enter al texto
    
    
    if (frameCount/60 >= 10)
    tateti = "instrucciones";
   
          
} else if ( tateti == "instrucciones" ) {
    background( 200, 0, 200 );
    image (imagen2, 0, 0);
    textSize (tam);
    text( "El juego comienza con el primer jugador colocando su símbolo \n en una casilla vacía. Luego, el segundo jugador coloca \n su símbolo en otra casilla vacía. Los jugadores \n continúan alternando turnos hasta que uno de \n ellos consigue tres símbolos iguales en línea recta \n o diagonal, o hasta que todas las casillas están ocupadas y  \n el juego termina en empate.", 320, height/2 );
     if (tam > 1){
    tam -= 0.2/26;
    println (tam);
    
     } if (tam < 19){
    colores = color (0);
    fill (colores); }
    
    if (frameCount/60 >= 23)
    tateti = "reglas";
    
   } else if ( tateti == "reglas" ) {
    background( 200 );
    image (imagen3, x, 0);
    x += 1 ;
   if (x > 320) {
   image (imagen4, posX, 0);
    posX -= 1; }
    fill (240, 0, 0);
  text( "Cada jugador solo debe colocar su símbolo una vez por \n turno y no debe ser sobre una casilla ya jugada. En caso \n de que el jugador haga trampa el ganador será el otro.", possX , 240 );
   if (possX > 320) {
   possX -= 0.5; }
   println (tam);
   
   if (frameCount/60 >= 39)
   tateti = "boton"; 
     
  } else if (tateti == "boton") {
    background (200);
    fill (200, 0, 0);
    rect (esquinaX1, esquinaY1, ancho, alto); 
    fill (255);
    text ( "Reiniciar", 300, 150);
  }
     
  
} 
void keyPressed (){
 tateti = "instrucciones";
}

void mousePressed (){
   
  if (mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
    frameCount = 0;
    fill (255);
 
   } if (frameCount/60>=0) {
    tateti = "juego";}
  
   tam = 4;
   x = 0 ;
   posX = 640 ;
   possX = 640;
  colores = color (200, 50, 0);
   

}


  
