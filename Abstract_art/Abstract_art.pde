//Abstract ART
//Randomized colored in figures
void setup(){
    size(500,500);
    strokeWeight(2); 
    frameRate(8);

}

void draw(){
  background(128);
  fill(random(0,255),random(0,255),random(0,255));//colores random
  
 beginShape();
  vertex(random(50,450),random(50,450));
  for (int i=0; i<20; i++) //cantidad de líneas
    bezierVertex(random(50,450),random(50,450),random(50,450),random(50,450),random(50,450), random(50,450)); //son 6 veces 
 endShape(CLOSE); 
 
}


void keyPressed()
{
    saveFrame("Nombre###.png");//para que se guarde en carpeta
}
