float x = 500;
float y = 200;
float radio = 45; //radio del círculo

float xVelocidad = 3;//cambiar velocidad puede hacer que rebote en diferentes lados
float yVelocidad = 2;


void setup () {
 size(800,600);
  noStroke();
  smooth();
 
}

void draw () {
  background (101, 93, 138);
  ellipse( x, y, 90, 90);//pelota
  velocidad_bordes();
}

//float value= (random(255));

 void mousePressed(){ //mouse Pressed sirve para cuando precionas el mouse cambie lo indicado
   float click = dist (x, y, mouseX, mouseY); //sirve para que solo funcione el click dentro de pelota
   
   if(radio > click) { //si la distancia del click es menor de 45(radio), se cambia de color
    fill(random(255), random(255), random(255)); //con random se puede escoger colores al azar
   }
 
}
void velocidad_bordes(){
  
  x = x + xVelocidad;
  if ((x+radio) > width || (x-radio) < 0) // (x+radio) > width-> rebote borde derecho || (x-radio) -> para que rebote del borde izq
  { 
    xVelocidad *= -1; //para que vaya reverso de izq a derecha
  }
  
   y += yVelocidad;
  if ((y+radio) > height || (y-radio) < 0) // (y+radio) > height-> rebote borde abajo || (y-radio) < 0) -> para que rebote del borde arriba
  {   // y+radio -> es para que tope con las orillas y no en medio del círuclo. 
    yVelocidad *= -1; //para que vaya reverso de arriba y abajo
  }
}
