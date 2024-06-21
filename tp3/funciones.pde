void dibujarCuadrado (int i, int j){ //función que no retorna valor
  
  int pantalla = width/2; //declaro las variables
      int x = j * tam + pantalla;
      int y = i * tam;
      
// Alternar entre rellenar con blanco y negro
      if ((i + j) % 2 == 0) fill(n); 
      else fill(b); 
      
    rect(x, y, tam, tam);
}

// la distancia entre el mouse y un punto y devuelve un tamaño mapeado
//Función que retorna valor
float calcularTamaño(float puntoX, float puntoY) {
  float distancia = dist(mouseX, mouseY, puntoX, puntoY);
  float tamañoMapeado = map(distancia, 0, width, tam / 2.2, tam / 4);
  return tamañoMapeado;
}
