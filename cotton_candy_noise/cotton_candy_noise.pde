float th = 0; //tiempo
void setup()
{
   size(200,200);
}

void draw(){
  background(128);
  th += 0.1; //como se tarda en generar el ruido, poner decimales mayor
for (int i=0; i< width;i++)
  for (int j=0; j< height;j++)
  {
    //agregamos diferentes stroke con noise diferente, para diferentes colores 
   stroke(255* noise(0.01*i,0.01*j,th),
          255* noise(0.02*i,0.02*j,th), 
          255* noise(0.03*i,0.03*j,th));  

   point (i,j);
  }

}
