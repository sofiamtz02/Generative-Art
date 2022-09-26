float x = 600;
float y = 100;
float radio= 45;

float xVelocidad = 5;//cambiar velocidad puede hacer que rebote en diferentes lados
float yVelocidad = 2;

 //float value = 56;

void setup () {
 size(800,600);
 //noStroke();
   smooth();

 
}


/*void  mouseClicked() {
  if (value == 56) {
    value = 138;
  } else {
    value = random(255);
  }
}*/
 

void draw () {
 //background (101, 93, 138);
  
  ellipse( x, y, 90, 90);//pelota
    pelota();
  
}

 void mousePressed(){ 
   float click = dist(x, y, mouseX, mouseY);
   
   if(click<45){ 
     fill(random(255),random(255),0); 
   }
 
}
void pelota (){

 
  //fill(value);

  x = x + xVelocidad;
  if ((x+radio) > width || (x-radio) < 0) { // x> width-> rebote borde derecho || x < 0 -> para que rebote del borde izq
    xVelocidad *= -1; //para que vaya reverso
  }
   y += yVelocidad;
   
  // y+radio -> es para que tope con las orillas y no en medio del círuclo. 
  if ((y+radio) > height || (y-radio) < 0) { // x> width-> rebote borde derecho || x < 0 -> para que rebote del borde izq
    yVelocidad *= -1; //para que vaya reverso
  }
}
