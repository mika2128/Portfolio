MsPacMan myMsPacman;
PVector posicion;

void setup (){
 size (400,600);
 myMsPacman = new MsPacMan ();
  
}

void draw (){
  background(0);
  myMsPacman.keyPressed();
  
  
}

/** Representa a Ms PacMan */
class MsPacMan{
  
  //------- definición de atributos---------//
  /** establece el color principal del PacMan*/
  private color c=(#FEFF00);
  /** establece la ubicación del PacMan*/
  private PVector posicion;
  /**establece el valor del inicio de la apertura del arco para la dirección 1 (ARRIBA)*/
  private float start1=radians(315);
  /**establece el valor del final de la apertura del arco para la dirección 1 (ARRIBA)*/
  private float stop1=radians(360+225);
  /**establece el valor del inicio de la apertura del arco para la dirección 2(DERECHA)*/
  private float start2=radians(45);
  /**establece el valor del final de la apertura del arco para la dirección 2 (DERECHA)*/
  private float stop2=radians(315);
  /**establece el valor del inicio de la apertura del arco para la dirección 3 (ABAJO)*/
  private float start3=radians(135);
  /**establece el valor del final de la apertura del arco para la dirección 3 (ABAJO)*/
  private float stop3=radians(405);
  /**establece el valor del inicio de la apertura del arco para la dirección 4 (IZQUIERDA)*/
  private float start4=radians(225);
  /**establece el valor del final de la apertura del arco para la dirección 4 (IZQUIERDA)*/
  private float stop4=radians (360+135);

  //------- zona de constructores---------//

/** Constructor por defecto */  
  public MsPacMan(){
  posicion = new PVector ();
  posicion.x = width/2;
  posicion.y = height/2;
  }

  //------- zona de los métodos--------//  
  
  /** dibuja a Ms Pacman y mueve su boca según la dirección*/  
  public void display(int direccion){
   fill (this.c);
   if (direccion==0){
      circle(posicion.x,posicion.y, 60);
        
   }
   if(direccion == 1){
      arc(posicion.x, posicion.y, 60, 60, start1,  stop1,  PIE); 
      fill(0);
      circle(posicion.x+10, posicion.y+10,10);
      stroke(1);
      line(posicion.x+10,posicion.y+10,posicion.x+10,posicion.y+20);
      line(posicion.x+10,posicion.y+10,posicion.x+16,posicion.y+20);
      line(posicion.x+10,posicion.y+10,posicion.x+4,posicion.y+20);
      fill(#FF00A2);
      triangle(posicion.x+22, posicion.y+25, posicion.x+12, posicion.y+30,posicion.x+17,posicion.y+35);
      triangle(posicion.x+22, posicion.y+25, posicion.x+32, posicion.y+20,posicion.x+27,posicion.y+15);      
      circle(posicion.x+22, posicion.y+25, 8);
      start1=start1-radians(3);
      stop1=stop1+radians(3);
      if (start1 < radians(250)){
        start1=start1+radians (60);
      }
      if (stop1 > radians(650)){
        stop1=stop1-radians(60);
      }      
   }
   if (direccion==2){
        arc(posicion.x,posicion.y, 60, 60, start2 , stop2,  PIE); 
       fill(0);
       circle(posicion.x-5, posicion.y-15,10);
      stroke(1);
      line(posicion.x-5,posicion.y-15,posicion.x-16,posicion.y-15);
      line(posicion.x-5,posicion.y-15,posicion.x-16,posicion.y-21);
      line(posicion.x-5,posicion.y-15,posicion.x-16,posicion.y-9);
       fill(#FF00A2);
       triangle(posicion.x-22, posicion.y-25, posicion.x-12, posicion.y-30,posicion.x-17,posicion.y-35);
       triangle(posicion.x-22, posicion.y-25, posicion.x-32, posicion.y-20,posicion.x-27,posicion.y-15);
       circle(posicion.x-22, posicion.y-25, 8);       
      start2=start2-radians(3);
      stop2=stop2+radians(3);
      if (start2 < radians(0)){
        start2=start2+radians (60);
      }
      if (stop2 > radians(360)){
        stop2=stop2-radians(60);
      }           
   }
      if(direccion==3){ 
       arc(posicion.x, posicion.y, 60, 60, start3 , stop3,  PIE); 
       fill(0);
       circle(posicion.x+10, posicion.y-10,10);
       stroke(1);
       line(posicion.x+10,posicion.y-10,posicion.x+10,posicion.y-20);
       line(posicion.x+10,posicion.y-10,posicion.x+16,posicion.y-20);
       line(posicion.x+10,posicion.y-10,posicion.x+4,posicion.y-20);
       fill(#FF00A2);
       triangle(posicion.x+22, posicion.y-25, posicion.x+12, posicion.y-30,posicion.x+17,posicion.y-35);
       triangle(posicion.x+22, posicion.y-25, posicion.x+32, posicion.y-20,posicion.x+27,posicion.y-15);       
       circle(posicion.x+22, posicion.y-25, 8);
       start3=start3-radians(3);
       stop3=stop3+radians(3);
      if (start3 < radians(90)){
        start3=start3+radians (60);
      }
      if (stop3 > radians(450)){
        stop3=stop3-radians(60);
      }   
    }
   if (direccion==4){
     arc(posicion.x, posicion.y, 60, 60, start4,stop4,   PIE);
       fill(0);
       circle(posicion.x+2, posicion.y-15,10);
       stroke(1);
       line(posicion.x+2,posicion.y-15,posicion.x+11,posicion.y-15);
       line(posicion.x+2,posicion.y-15,posicion.x+11,posicion.y-9);
       line(posicion.x+2,posicion.y-15,posicion.x+11,posicion.y-21);
       fill(#FF00A2); 
       triangle(posicion.x+22, posicion.y-25, posicion.x+12, posicion.y-30,posicion.x+17,posicion.y-35);
       triangle(posicion.x+22, posicion.y-25, posicion.x+32, posicion.y-20,posicion.x+27,posicion.y-15);
       circle(posicion.x+22, posicion.y-25, 8);
      start4=start4-radians(3);
      stop4=stop4+radians(3);
      if (start4 < radians(180)){
        start4=start4+radians (60);
      }
      if (stop4 > radians(540)){
        stop4=stop4-radians(60);
      }        
   }  
}
  
  /** detecta la tecla presionada para darle una dirección, ya sea en el eje X o en el Y */
  public void keyPressed(){
    int direccion=0;
    if (key=='w' || keyCode == UP){
    direccion=1;  
    }    
    if (key=='d' || keyCode == RIGHT){
    direccion=2;  
    }
    if (key=='s' || keyCode == DOWN){
    direccion=3;  
    }    
    if (key=='a' || keyCode == LEFT){
    direccion=4;  
    }    
    move(direccion);
    display(direccion);
  }
 
  /** mueve a Ms PacMan en el eje de las X o de las Y según la dirección*/ 
  public void move (int direccion){
     int velocidad=3;

     if (direccion==1){
      posicion.y = posicion.y - velocidad;
      if (this.posicion.y < 0){
       this.posicion.y = height; 
       }
     }   
    if (direccion==2){
      posicion.x = posicion.x + velocidad;
      if (posicion.x > width){
       posicion.x = 0; 
       }       
    }  
     if (direccion==3){
      posicion.y = posicion.y + velocidad;
      if (posicion.y > height){
       posicion.y = 0; 
       }
    }
     if (direccion==4){
     posicion.x= posicion.x - velocidad;
     if (posicion.x < 0){
       posicion.x = width;
       }
     }
    
    }
}
  
