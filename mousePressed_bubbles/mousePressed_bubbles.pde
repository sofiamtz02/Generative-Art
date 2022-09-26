void setup()
{
   size(500,500); 
}

void draw(){
  float sz= random(3,50); //tamaño de circulos
  fill(100+random(0,90), 120+random(0,90), 0); //para cambiarle el color en tonos
  if (mousePressed)ellipse (mouseX, mouseY, sz, sz);

}
