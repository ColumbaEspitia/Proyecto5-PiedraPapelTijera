int Pant;
PImage inicio;
PImage instruccion;
PImage juego;
juego j;

void setup(){
  size(600,600);
  inicio = loadImage("INICIO.png");
  instruccion = loadImage("INSTRUCCION.png");
  juego = loadImage("juego.png");
  j = new juego();
}

void draw(){
  switch(Pant){
    case 0:
    image(inicio,0,0,width,height);
    if(key == ENTER){
      Pant = 1;
    }
    break;
    
    
    case 1:
    image(instruccion,0,0,width,height);
    if(key == 'A' || key == 'a' ){
      Pant = 2;
    }
    break;
    
    case 2:
    image(juego,0,0,width,height);
    j.p1();
    j.p2();
    break;
  }
}

class juego{
  
  PImage piedra;
  PImage papel;
  PImage tijeras;
  float ppt;
  float p1;
  boolean t;
  float cont;
  juego(){
    this.piedra = loadImage("piedra.png");
    this.papel = loadImage("papel.png");
    this.tijeras = loadImage("tijera.png");
    this.ppt = 0;
    this.p1 = 0;
    this.t = false;
  }
  
  void p1(){
    if(ppt == 0){
      p1 = random(0,3);
      if(p1 >= 0 && p1 < 1){
        image(piedra,50,200,150,150);
      }
      if(p1 >= 1 && p1 < 2){
        image(papel,50,200,150,150);
      }
      if(p1 >= 2 && p1 < 3){
        image(tijeras,50,200,150,150);
      }
    }
    switch(key){
      case '1':
      ppt = 1;
      image(piedra,50,200,150,150);
      t = true;
      break;
      
      case '2':
      ppt = 2;
      image(papel,50,200,150,150);
      t = true;
      break;
      
      case '3':
      ppt = 3;
      image(tijeras,50,200,150,150);
      t = true;
      break;
    }
  }
  
  void p2(){
    if(ppt == 0){
      p1 = random(0,3);
      if(p1 >= 0 && p1 < 1){
        image(piedra,400,200,150,150);
      }
      if(p1 >= 1 && p1 < 2){
        image(papel,400,200,150,150);
      }
      if(p1 >= 2 && p1 < 3){
        image(tijeras,400,200,150,150);
      }
    }
    if( t == true){
      image(piedra,400,200,150,150);
    }
  }
}
