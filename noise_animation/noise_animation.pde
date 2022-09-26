float th = 0; //tiempo
void setup()
{
   size(500,500);
   //frameRate(15);
   noStroke();
}

void draw(){
  background(128);
  th += 0.051; //se cambia la velocidad de la animación
for (int i=0; i< width;i+=4)
  for (int j=0; j< height;j+=4)
  {
    //Cambiarlo a fill
    fill( 256* noise(0.01*i,0.02*j,th), //eje Y
          80+128* noise(0.009*i,0.007*j,0.58*th), //eje x
          frameCount%20+50* noise(0.4*i,0.3*j,2*th));  

   rect(i,j,8,8);//rectangulos de 8 por 8 
  }

}
