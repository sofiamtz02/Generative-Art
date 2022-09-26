//Dibujar un fractal
void setup(){
size(600,700);

}
void draw(){
  background(255);
  fractalCirculo (width/2, width/2, 300);//es para que el circulo quede a la mitad de la altura y ancho, pero sea de 200

}

void fractalCirculo(float x, float y, float n){ //para no tener que teclearlo, es más rápido recibirlos como x,y,n
    stroke(0,random(255),0); //para que cambie de colores
    noFill();
    ellipse(x, y, n, n);
    //para que se hagan circulos dentro de otros círculos, llamamos la funcion dentro de la funcion
    if (n>4){
      fractalCirculo(x,y+n/2,n/2); //es para que vaya a la mitad del ciruclo y se repita
      fractalCirculo(x,y-n/2,n/2); //lo mismo pero para la parte de abajo por el menos
      fractalCirculo(x+n/2,y,n/2); //con este forma un tipo de triangulo, se va hacia la derecha de la x
   
    }
}
  
