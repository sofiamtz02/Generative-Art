void setup()
{
   size(500,500); 
}

void draw(){
  background(100);
 for (int i=30; i< width-30; i+=50)
  for (int j=30; j< height-30; j+=50)
  {
    float vari = dist(i, j, mouseX, mouseY);
    fill( 255-0.7*vari,
          180-0.5*vari,
          250-0.3*vari);
          
   rect(i + 100*random(-3,3)/vari , j + 100*random(-3,3)/vari, 40, 40); 
  }


}
