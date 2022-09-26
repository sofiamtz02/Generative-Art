//Bubbles apear at random with random color and shapes
float vx=0, vy=0; //velocidad en x, velocidad en Y
float x=0, y=0; //posición en x, y

void setup()
{
   size(500,500); 
   x = random (20, 480); //posición de pinces
   y = random (20, 480);

   
}

void draw(){
  
  float sz = random(3,50); //tamaño de circulos
  fill(100+random(0,90), 120+random(0,90), 0); //para cambiarle el color en tonos
  ellipse(x,y,sz,sz);
  x+= random(-10,10);
  y+= random(-10,10);


}
