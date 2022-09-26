int[] arr;
int pos;
int last;
boolean ordenado = false;

void setup() {
  size(900, 500);
  
  arr = new int[30];
  //para que aparezcan al azar los tamaños
  for (int i=0; i < arr.length; i++) {
    arr[i] = i + Math.round(random(0, 30));
  }
  
  // para revolverlos
  for ( int i = 0; i < arr.length; i++) {
    int r = int (random (arr.length));
    int t = arr[i];
    arr[i] = arr[r];
    arr[r] = t;
  }
  last = arr.length-1;//vaya a la siguiente posicion de izq
}



void draw() {
  if (ordenado) { 
    return;
  }
  
  background(247, 237, 226);
  //translate(1, 0);
  
  if (pos >= last) {
    pos = 0;
    last--;
    
  }
  
  if (arr[pos] > arr[pos+1]) {
    int temp = arr[pos];
    arr[pos] = arr[pos+1];
    arr[pos+1] = temp;
  }
  pos++;
  

  for (int i = 0; i < arr.length; i++) {
    fill(245, 202, 195);
    
    if (i == pos) { //cuando pase por todas las posiciones, se pone rojo
        fill(132, 165, 157);
      }
    if (i > last) { //si llega a max(ultimo num) entonces colorea rosa
        fill(242, 132, 130);
      }
    
    rect(i*30, height-(8*arr[i]), 30, arr[i]*40);
    //  (x coord espacio, y coord, width rectangul, height rect);
  }
  
  if (last == -1) {//cuando se convierta en max, se pone en azul por el true
    ordenado = true;
  
  
    
  }
}
