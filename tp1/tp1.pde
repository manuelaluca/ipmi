PImage paisaje;               //Manuela Luca
                              // Comisión 2
                              // 119071/8

void setup (){
  size (800, 400);
  background (87);

 
  paisaje = loadImage ( "paisaje.jpg" );
}
void draw (){
rect (0, 0, 100, 200);
image (paisaje, 0, 0);
println (mouseX + " / " + mouseY);

// ventana 
fill (255);
fill (170, 160, 200); // fondo
ellipse (600, 192, 303, 450);
noFill ();
stroke (50);
ellipse (600, 192, 370, 500);
fill (125);
ellipse (604, 20, 200, 72);

//atardecer
fill (190);
noStroke ();
triangle (450, 229, 736, 249, 451, 247);
triangle (450, 229, 681, 234, 731, 249);

fill (225, 140, 245);
noStroke ();
triangle (451, 248, 734, 249, 746, 260);
triangle (746, 260, 451, 246, 453, 258);

fill (250, 160, 100);
triangle (730, 260, 610, 260, 714, 270);



// avión
stroke (150);
line (532, 200, 583, 182) ; // unión
 
fill (150);
noStroke ();
triangle (746, 254, 583, 182, 751, 220);
triangle (583, 182, 532, 200, 731, 247);

// ala
fill (0, 120, 180); 
triangle (526, 182, 566, 168, 509, 124);
stroke (150);
line (508, 123, 532, 200); // izq
line (583, 182, 508, 123); // derecha
// decoración del ala
stroke (255);
line (514, 139, 519, 137);
line (516, 147, 526, 144);
line (519, 158, 535, 153);
line (522, 169, 547, 160);


fill (180);
noStroke ();
triangle (527, 181, 583, 182, 532, 200);
triangle (527, 181, 564, 168, 582, 182);
triangle (745, 254, 714, 269, 718, 271);

fill (150);
triangle (745, 257, 716, 272, 741, 274);
line (743, 260, 714, 273); // la parte de abajo
line (714, 273, 741, 274);

//butaca
fill (65);
triangle (725, 0, 800, 0, 800, 300);
triangle (800, 300, 755, 293, 725, 0);
fill (65);
triangle (764, 294, 800, 300, 800, 396);
fill (50);
triangle (764, 294, 800, 300, 800, 311);
triangle (800, 311, 766, 304, 764, 294);
}
  
