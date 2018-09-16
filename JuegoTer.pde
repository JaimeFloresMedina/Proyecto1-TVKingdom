int pantalla =0;
int numJA = 0;
int numJB = 0;
int k = 100;
int turno = 1;
int camx =0;
int movAtaq =0;
int movVida =0;
int jug1x = -30;
int jug1y =-10;
int numJ1;
int numJ2;
int jug2x = 330;
int jug2y =-10;
int ret;
int dano1;
int dano2, dano3;
int ran, t1, t2;
int po, extra, po1, extra1;
int jgd=1;

class Personaje {
  //atributos

  float p=0;
  float z= 0;
  int vida =900;
  int dibujar;
  int jugador =jgd;
  int fuerza, defensa;
  String nombre;
  int movAtaq;


  Personaje (String nombre, int dibujar, int jugador ) {
    this.nombre = nombre;
    this.dibujar=dibujar;
    this.jugador = jugador;
  }

  //fallo
  void mostrar(int dibujar, int xt, int yt, float esc) {
    pushMatrix();
    scale(esc);
    translate(xt, yt);
    switch (dibujar) {
    case 0:
      //aro
      noStroke();
      fill(#F7B59B);
      rect(165, 225, 10, 70);
      rect(225, 225, 10, 70);
      ellipse(230, 295, 10, 10);
      ellipse(170, 295, 10, 10);
      rect(185, 330, 13, 30);
      rect(205, 330, 13, 30);
      ellipse(187, 360, 20, 10);
      ellipse(215, 360, 20, 10);
      fill(#B9EFFF);
      ellipse(170, 225, 20, 20);
      ellipse(230, 225, 20, 20);
      quad(170, 225, 230, 225, 220, 330, 180, 330);
      for (p=12.5; p<50; p+=12.5) {
        triangle(168.5+p, 330, 181+p, 330, 174.75+p, 340);
      }
      fill(0);
      ellipse(200, 200, 50, 50);
      rect(175, 200, 50, 70);
      for (p=12.5; p<=50; p+=12.5) {
        triangle(163+p, 270, 175.5+p, 270, 169.25+p, 280);
      }
      break;
    case 1:
      //pacman
      fill(#FFCD00);
      noStroke();
      quad(200, 250, 150, 280, 140, 270, 190, 240);
      quad(150, 280, 115, 250, 110, 260, 140, 280);
      rect(180, 290, 15, 50);
      rect(205, 290, 15, 50);
      ellipse (200, 250, 100, 100);
      fill(255, 0, 0);
      triangle(200, 320, 230, 320, 203, 350);
      triangle(175, 330, 200, 330, 194, 355);
      ellipse(180, 350, 30, 25);
      ellipse(220, 350, 35, 35);
      fill(0);
      arc(190, 255, 70, 70, 1/PI, PI, CHORD);
      fill(255, 0, 0);
      ellipse(190, 280, 30, 15);
      fill(0);
      ellipse(180, 230, 15, 25);
      ellipse(210, 230, 15, 25);
      fill(#FFCD00);
      triangle(170, 235, 170, 225, 185, 230);
      triangle(200, 235, 200, 225, 215, 230);
      fill(255, 0, 0);
      ellipse(115, 250, 30, 30);
      ellipse(250, 270, 40, 40);
      break;
    case 2:
      //fuerte
      int v=-65; 
      noStroke();
      fill(#F7B59B);
      triangle(125, 190-v, 150, 190-v, 140, 140-v);
      fill(255, 0, 0);
      ellipse(145, 145-v, 30, 30);
      ellipse(148, 153-v, 30, 20);
      fill(#F7B59B);
      triangle(250, 190-v, 275, 190-v, 265, 140-v);
      fill(255, 0, 0);
      ellipse(260, 145-v, 30, 30);
      ellipse(257, 150-v, 30, 20);
      fill(#F7B59B);
      ellipse(250, 190-v, 50, 40);
      ellipse(187, 270-v, 20, 50);
      ellipse(213, 270-v, 20, 50);
      fill(250, 0, 0);
      ellipse(200, 250-v, 50, 40);
      fill(255);
      ellipse (200, 200-v, 100, 100);
      fill(#F7B59B);
      ellipse(150, 190-v, 50, 40);
      noStroke();
      ellipse (200, 150-v, 40, 50);
      fill(180, 0, 0);
      ellipse(180, 290-v, 40, 20);
      ellipse(223, 290-v, 40, 20);
      fill(255);
      stroke(2);
      ellipse(190, 140-v, 10, 10);
      ellipse(210, 140-v, 10, 10);
      fill(0);
      ellipse(190, 140-v, 3, 3);
      ellipse(210, 140-v, 3, 3);
      strokeWeight(2);
      line(188, 199, 198, 202);
      line(187, 217, 202, 222);
      break;
    case 3:
      //mago
      noStroke();

      fill(#F7B59B);
      rect(168, 247, 10, 60);
      rect(222, 247, 10, 60);
      fill(#F7B59B);
      rect(183, 302, 10, 60);
      rect(207, 301, 10, 60);
      ellipse(172, 305, 10, 10);
      ellipse(229, 308, 10, 10);
      ellipse(184, 362, 19, 10);
      ellipse(217, 361, 19, 10);
      fill(#062c5b);
      ellipse(178, 249, 20, 18);
      ellipse(221, 247, 21, 15);
      fill(#062c5b);
      quad(180, 240, 220, 240, 230, 320, 170, 320);
      rect(170, 320, 60, 25);
      fill(#F7B59B);
      ellipse(200, 220, 48, 50);
      fill(9);
      ellipse(191, 220, 10, 10);
      ellipse(208, 220, 10, 10);
      fill(0, 0, random(150, 220));
      triangle(175, 220, 225, 220, 200, 120);
      fill(208);
      triangle(185, 238, 215, 238, 199, 300);
      break;
    case 4:
      //domo
      int d =30;
      noStroke();
      fill(#523509);
      rect(200, 350-d, 40, 50);
      rect(260, 350-d, 40, 50);
      rect(300, 270-d, 20, 70);
      fill(#523509);
      ellipse(210, 255-d, 70, 80);
      fill(255, 255, 255);
      ellipse(210, 255-d, 30, 40);
      fill(#523509);
      rect(200, 200-d, 100, 150);
      fill(255, 0, 0);
      rect(225, 250-d, 50, 40);
      fill(0);
      ellipse(225, 220-d, 10, 10);
      ellipse(275, 220-d, 10, 10);
      fill(255);
      triangle(225, 250-d, 237.5, 250-d, 231.25, 260-d);
      for (z=12.5; z<50; z+=12.5) {
        triangle(225+z, 250-d, 237.5+z, 250-d, 231.25+z, 260-d);
        triangle(225+z, 290-d, 237.5+z, 290-d, 231.25+z, 280-d);
      }
      triangle(225, 290-d, 237.5, 290-d, 231.25, 280-d);
      fill(#523509);
      ellipse(200, 230-d, 30, 30);

      break;
    }
    popMatrix();
  }


  void vida() {
    if (jugador == 1) {
      noStroke();
      fill(#DEDEDE);
      rect(300, 0, -300, 15, 10, 10, 10, 10);
      fill(#DE0206);
      rect(300, 0, -jugador1.vida/3, 15, 10, 10, 10, 10);
      fill(255);
      textSize(20);
      text(jugador1.vida, 5, 40);
    }
    if (jugador == 2) {
      noStroke();
      fill(#DEDEDE);
      rect(400, 0, 300, 15, 10, 10, 10, 10);
      fill(#DE0206);
      rect(400, 0, jugador2.vida/3, 15, 10, 10, 10, 10);
      fill(255);
      text(jugador2.vida, 640, 40);
    }
  }

  void golpe1(int danno2, int danno3) {


    if (jugador==1) {
      camx = camx+5;
      int b = (int)random(60);
      noStroke();
      fill(random(100, 255), 0, 0);
      ellipse(camx+200, 200, b, b);
      if (camx==270) {
        golpe(500, 200);
        jugador2.vida=jugador2.vida-danno2;
        camx=0;
        dano2 = 0;
        turno=2;
        key = 0;
      }
    }
    if (jugador==2) {
      camx = camx+5;
      int s = (int)random(60);
      noStroke();
      fill(random(100, 255), 0, 0);
      ellipse(450-camx, 200, s, s);

      if (camx==270) {
        key = 0;
        golpe(200, 200);

        jugador1.vida=jugador1.vida-danno3;
        camx=0;
        dano3=0;
        turno=1;
      }
    }
  }

  void golpePoder(int danno1) {

    if (jugador==1) {
      movAtaq=movAtaq+5;
      noStroke();
      //Comentario al maestro:la animacion que se ejecuta al realizar un ataque esta basada en un juego anteriormente creado.  
      fill(0, 150, 0);
      ellipse(movAtaq+200, sin(movAtaq*40)*2+220, 20, 10);
      ellipse(movAtaq+200, sin(movAtaq*40)*2+200, 20, 10);
      ellipse(movAtaq+200, sin(movAtaq*40)*2+240, 20, 10);
      fallo.fallo(20, 180);

      if (movAtaq==270) { 
        if (ret==0) {
          key=0;
          movAtaq=0;
          ret=4;
        }
        if (ret>0) {
          golpe(500, 200);
          key=0;
          jugador2.vida=jugador2.vida-danno1; 
          movAtaq=0;
          ret=4;
        }
        turno=2;
      }
    } 

    if (jugador==2) {

      movAtaq=movAtaq+5;
      noStroke();
      fill(0, 100, 0);
      ellipse(470-movAtaq, sin(movAtaq*40)*2+220, 20, 10);
      ellipse(470-movAtaq, sin(movAtaq*40)*2+200, 20, 10);
      ellipse(470-movAtaq, sin(movAtaq*40)*2+240, 20, 10);
      fallo.fallo(600, 180);

      if (movAtaq==270) {
        if (ret==0) {

          key=0;
          movAtaq=0;
          turno=1;
        }
        if (ret>0) {
          golpe(200, 200);
          key=0;
          jugador1.vida=jugador1.vida-danno1;
          movAtaq=0;
          turno=1;
        }
      }
    }
  }
  void vidaE(int po) {

    if (this.vida<200) {
      if (jugador==1) {

        movVida=movVida+5;
        if (po==0) {

          fill(255);
          text("no vida extra", 250, 220);
        }
        if (po>0) {
          corazon(1, 245, 200);
          fill(255);
          text(" extra", 260, 220);
        }

        if ( movVida==270) { 
          if (po==0) {

            key=0;
            movVida=0;
            po=4;
          }
          if (po>0) {

            key=0;
            this.vida=this.vida+extra; 
            movVida=0;
            po=4;
          }
          turno=2;
        }
      } 


      if (jugador==2) {

        movVida= movVida+5;
        if (po==0) {
          fill(255);
          text("no extra", 350, 220);
        }
        if (po>0) {
          corazon(1, 475, 200);
          fill(255);
          text(" extra", 370, 220);
        }

        if ( movVida==270) {
          if (po==0) {

            key=0;
            movVida=0;
            turno=1;
          }
          if (po>0) {

            key=0;
            this.vida=this.vida+extra;
            movVida=0;
            turno=1;
          }
        }
      }
    } else {
      textSize(10);
      text("Tienes mas de 200 pts de vida \nhas un ataque", 290, 120, 140, 300);
    }
  }
}

class Pantallas {
  int i, j;
  PFont font;
  PFont font1;


  void pInicio() {
    pushMatrix();
    font = createFont("BIT.ttf", 10);
    font1 = createFont("Pixeled.ttf", 10);
    background(0);
    noStroke();
    fill(#F4FC08);
    rect(0, 0, 100, 500);
    fill(#05FC8F);
    rect(100, 0, 100, 500);
    fill(#25FC05);
    rect(200, 0, 100, 500);
    fill(#05BCFC);
    rect(300, 0, 100, 500);
    fill(#F51900);
    rect(400, 0, 100, 500);
    fill(#004D7E);
    rect(500, 0, 100, 500);
    fill(#78007E);
    rect(600, 0, 100, 500);
    fill(0);
    rect(200, 300, 300, 100, 10, 10, 0, 0);

    textFont(font1);
    textSize(70);
    fill(0);
    text(" KINGDOM", 95, 210);
    fill(255);
    text(" KINGDOM", 98, 213);
    fill(0);

    text("TV ", 270, 110);
    fill(0);
    rect(100, 400, 500, 50, 10, 10, 10, 10);
    fill(255);
    text("TV ", 275, 115);
    fill(255);
    textSize(20);
    text("Presiona 'ENTER' \n para comenzar", 215, 345);
    popMatrix();
  }

  void pSeleccion() {
    pushMatrix();

    background(0, 0, 100);
    fill(255);
    textSize(29.5);
    text("Elige tu personaje", 50, 50);

    noStroke();
    fill(50, 0, 0);
    quad(100, 100, 600, 100, 500, 50, 50, 50);
    fill(65, 0, 0);
    quad(100, 100, 50, 50, 50, 180, 100, 230);
    fill(120, 0, 0);
    rect(100, 100, 500, 130, 0, 0, 10, 0);
    fill(0, 0, 50);
    rect(0, 300, 700, 200);
    fill(0, 0, 40);
    rect(0, 300, 700, 50);
    fill(0, 0, 20);
    quad(100, 350, 600, 350, 500, 300, 50, 300);
    fill(255);
    textSize(10);

    text("Para navegar entre personajes:\nEl jugador 1 presiona: 'q' 'w' 'e' 'r' 't' ", 50, 370);
    text("El jugador 2 presiona: 'a' 's' 'd' 'f' 'g' \n Cuando se elijan los jugadores presiona 'ENTER' para seleccionarlos y jugar  ", 50, 430);
    popMatrix();
  }
  void pCombate() {

    background(255);
    for (this.i = 0; this.i<700; this.i+=20) {
      for (this.j = 0; this.j<500; this.j+=20) {

        noStroke();
        fill(0, 0, random(10, 255));
        rect(this.i, this.j, 20, 20);
      }
    }
    fill(0, 0, 30);
    rect(300, 0, 100, 40, 0, 0, 10, 10);
    rect(40, 0, 600, 20);
    fill(70, 0, 0);
    rect(0, 0, 40, 370);
    rect(660, 0, 40, 370);
    fill(0, 0, 0, 50);
    rect(0, 0, 700, 500);
    fill(100, 0, 0);
    rect(40, 0, 20, 500);
    rect(640, 0, 20, 500);
    fill(140, 0, 0);
    rect(0, 360, 700, 140, 10, 10, 0, 0);
    fill(40, 0, 0);
    quad(0, 360, 40, 340, 660, 340, 700, 360);
    fill(255);
    textSize(10);
    text("usa:\n'v': Para obtener vida extra (solo si tienes menos de 200 pts de vida)", 20, 380);
    text("'b': Para hacer Golpe Sencillo \n'n' Para hacer un Golpe Combo (Puedes FALLAR o hacer DOBLE daño) ", 20, 440);
  }
  void pFinal() {
    background(255);
    for (int k = 0; k<700; k+=10) {
      for (int l = 0; l<500; l+=5) {
        noStroke();
        fill(random(200));
        rect(k, l, 10, 5);
      }
    }
    fill(0);
    rect(200, 50, 300, 100);
    fill(255);
    textSize(30);
    text("GAME OVER", 210, 120);
  }
}
//El corazón lo busqué de internet (Porque no iba a saber como hacerlo)
void corazon(float sca, int xt, int yt) {
  pushMatrix();
  translate(xt, yt);
  scale(sca);
  smooth();
  noStroke();
  fill(#E32222);
  beginShape();
  vertex(0, 0); 
  bezierVertex(0, -20, 40, -10, 0, 25); 
  vertex(0, 0); 
  bezierVertex(0, -20, -40, -10, 0, 25); 
  endShape();
  popMatrix();
}
void reinicio() {
  numJA = 0;
  numJB = 0;
  jugador1.vida=900;
  jugador2.vida=900;
  turno = 1;
  k = 100;
}

void golpe(int x, int y) {
  switch(ret) {
  case 1:
    pushMatrix();
    pushMatrix();
    translate(x, y);
    noStroke();
    fill(255, 255, 0);
    ellipse(0, 0, 60, 60);
    quad(0, 0, -10, -30, 0, -60, 10, -30);
    quad(0, 0, -10, 30, 0, 60, 10, 30);
    quad(0, 0, -30, -10, -60, 0, -30, 10);
    quad(0, 0, 30, -10, 60, 0, 30, 10);
    pushMatrix();
    rotate(-.8);
    quad(0, 0, -10, -30, 0, -60, 10, -30);
    quad(0, 0, -10, 30, 0, 60, 10, 30);
    quad(0, 0, -30, -10, -60, 0, -30, 10);
    quad(0, 0, 30, -10, 60, 0, 30, 10);
    popMatrix();
    popMatrix();

    scale(.7);
    noStroke();
    fill(255, 155, 0);
    ellipse(0, 0, 60, 60);
    quad(0, 0, -10, -30, 0, -60, 10, -30);
    quad(0, 0, -10, 30, 0, 60, 10, 30);
    quad(0, 0, -30, -10, -60, 0, -30, 10);
    quad(0, 0, 30, -10, 60, 0, 30, 10);
    pushMatrix();
    rotate(-.8);
    quad(0, 0, -10, -30, 0, -60, 10, -30);
    quad(0, 0, -10, 30, 0, 60, 10, 30);
    quad(0, 0, -30, -10, -60, 0, -30, 10);
    quad(0, 0, 30, -10, 60, 0, 30, 10);
    popMatrix();
    popMatrix();
    break;
  case 2:
    pushMatrix();
    pushMatrix();
    translate(x, y);
    noStroke();
    fill(255, 255, 0);
    ellipse(0, 0, 60, 60);
    quad(0, 0, -10, -30, 0, -60, 10, -30);
    quad(0, 0, -10, 30, 0, 60, 10, 30);
    quad(0, 0, -30, -10, -60, 0, -30, 10);
    quad(0, 0, 30, -10, 60, 0, 30, 10);
    pushMatrix();
    rotate(-.8);
    quad(0, 0, -10, -30, 0, -60, 10, -30);
    quad(0, 0, -10, 30, 0, 60, 10, 30);
    quad(0, 0, -30, -10, -60, 0, -30, 10);
    quad(0, 0, 30, -10, 60, 0, 30, 10);
    popMatrix();
    popMatrix();
    scale(.7);
    noStroke();
    fill(255, 155, 0);
    ellipse(0, 0, 60, 60);
    quad(0, 0, -10, -30, 0, -60, 10, -30);
    quad(0, 0, -10, 30, 0, 60, 10, 30);
    quad(0, 0, -30, -10, -60, 0, -30, 10);
    quad(0, 0, 30, -10, 60, 0, 30, 10);
    pushMatrix();
    rotate(-.8);
    quad(0, 0, -10, -30, 0, -60, 10, -30);
    quad(0, 0, -10, 30, 0, 60, 10, 30);
    quad(0, 0, -30, -10, -60, 0, -30, 10);
    quad(0, 0, 30, -10, 60, 0, 30, 10);
    popMatrix();
    popMatrix();

    pushMatrix();
    pushMatrix();
    translate(x-15, y+75);
    noStroke();
    fill(255, 255, 0);
    ellipse(0, 0, 60, 60);
    quad(0, 0, -10, -30, 0, -60, 10, -30);
    quad(0, 0, -10, 30, 0, 60, 10, 30);
    quad(0, 0, -30, -10, -60, 0, -30, 10);
    quad(0, 0, 30, -10, 60, 0, 30, 10);
    pushMatrix();
    rotate(-.8);
    quad(0, 0, -10, -30, 0, -60, 10, -30);
    quad(0, 0, -10, 30, 0, 60, 10, 30);
    quad(0, 0, -30, -10, -60, 0, -30, 10);
    quad(0, 0, 30, -10, 60, 0, 30, 10);
    popMatrix();
    popMatrix();
    scale(.7);
    noStroke();
    fill(255, 155, 0);
    ellipse(0, 0, 60, 60);
    quad(0, 0, -10, -30, 0, -60, 10, -30);
    quad(0, 0, -10, 30, 0, 60, 10, 30);
    quad(0, 0, -30, -10, -60, 0, -30, 10);
    quad(0, 0, 30, -10, 60, 0, 30, 10);
    pushMatrix();
    rotate(-.8);
    quad(0, 0, -10, -30, 0, -60, 10, -30);
    quad(0, 0, -10, 30, 0, 60, 10, 30);
    quad(0, 0, -30, -10, -60, 0, -30, 10);
    quad(0, 0, 30, -10, 60, 0, 30, 10);
    popMatrix();
    popMatrix();
    break;
  }
}

void nombres() {
  textSize(15);
  if (numJA==1) {
    text(aro.nombre, 100, 60);
  }
  if (numJA==2) {
    text(pacman.nombre, 100, 60);
  }
  if (numJA==3) {
    text(fuerte.nombre, 100, 60);
  }
  if (numJA==4) {
    text(mago.nombre, 100, 60);
  }
  if (numJA==5) {
    text(domo.nombre, 100, 60);
  }
  if (numJB==1) {
    text(aro.nombre, 400, 60);
  }
  if (numJB==2) {
    text(pacman.nombre, 400, 60);
  }
  if (numJB==3) {
    text(fuerte.nombre, 400, 60);
  }
  if (numJB==4) {
    text(mago.nombre, 400, 60);
  }
  if (numJB==5) {
    text(domo.nombre, 400, 60);
  }
}




void keyPressed() {

  if (pantalla == 1) {

    if (key=='q' || key =='Q') {
      numJA=1;
      key=0;
    }

    if (key == 'w' || key=='W') {

      numJA=2;

      key=0;
    }
    if (key=='e' || key =='E') {

      numJA=3;

      key=0;
    }

    if (key == 'r' || key=='R') {

      numJA=4;

      key=0;
    }
    if (key == 't' || key=='T') {

      numJA=5;

      key=0;
    }


    if (key=='a' || key =='A') {
      numJB=1;
      key=0;
    }

    if (key == 's' || key=='S') {

      numJB=2;

      key=0;
    }
    if (key=='d' || key =='D') {

      numJB=3;

      key=0;
    }

    if (key == 'f' || key=='F') {

      numJB=4;

      key=0;
    }
    if (key == 'g' || key=='G') {

      numJB=5;

      key=0;
    }



    if (numJA>=1 && numJA<=5) {
      if (numJB>=1 && numJB<=5) {
        if (key=='\n') {
          numJ1=numJA;
          numJ2=numJB;

          pantalla=2;
        }
      }
    }
  }


  if (pantalla==2) {
    if (jugador1.vida>0 && jugador2.vida>0) {

      if (key=='v'||key=='V') {
        po= (int)random(2);
        extra=150*po;
      }

      if (key=='b'|| key=='B') {

        if (turno==1) { 
          ran = (int)random(1, 10);
          t1 = (int)random(4, 12);
          t2 = (int)random(4, 12);
          dano2= (t1*ran);
        }
        if (turno==2) {
          ran = (int)random(1, 10);
          t1 = (int)random(4, 12);
          t2 = (int)random(4, 12);
          dano3 =(t2*ran);
        }
      }
      if (key=='n'|| key=='N') {
        if (turno==1) { 
          ret=(int)random(3);
          dano1=((int)random(60, 85)*ret);
        }
        if (turno==2) {
          ret=(int)random(3);
          dano1=((int)random(50, 85)*ret);
        }
      }
    }
  }

  if (pantalla==3) {
    if (keyCode==ENTER) {
      reinicio();
      pantalla=1;
    }
  }
}

class Combos {


  void fallo(int x, int y) {
    pushMatrix();
    translate(x, y);
    switch(ret) {
    case 0:
      fill(255, 0, 0);
      rect(0, -20, 85, 30, 0, 0, 10, 10);
      fill(255);
      textSize(15);
      text("Fallido", 5, 0);
      break;

    case 2:
      fill(255, 200, 0);
      rect(0, -20, 75, 30, 0, 0, 10, 10);
      fill(0);
      textSize(15);
      text("Doble", 5, 0);
      break;
    }
    popMatrix();
  }
}







Pantallas pInicio, pSeleccion, pCombate;
Pantallas pFinal, seleccionador;
Personaje aro;
Personaje pacman;
Personaje jugador1;
Personaje jugador2;
Personaje fuerte;
Personaje mago;
Personaje domo;
Combos fallo;



void setup() {
  size(700, 500);


  pInicio = new Pantallas();
  pSeleccion = new Pantallas();
  pCombate = new Pantallas();
  pFinal = new Pantallas();
  seleccionador = new Pantallas();
  aro = new Personaje ("Samara Morgan", 0, 0);
  pacman = new Personaje ("Pacman", 1, 0);
  jugador1 = new Personaje ("", 0, 1);
  jugador2 = new Personaje ("", 0, 2);
  fuerte = new Personaje ("Butterbean", 0, 0);
  mago = new Personaje ("Julius Dein", 0, 0);
  domo = new Personaje ("Domo", 0, 0);
  fallo= new Combos();
}




void draw () {

  if (pantalla ==0) {
    pInicio.pInicio();
    if (keyCode==ENTER) {
      pantalla =1;
    } else {
      key =0;
    }
  }

  if (pantalla == 1) { 
    pSeleccion.pSeleccion();


    aro.mostrar(0, 50, 0, 0.6);
    pacman.mostrar(1, 270, 30, 0.55);
    fuerte.mostrar(2, 385, 0, 0.6);
    mago.mostrar(3, 700, 80, 0.5);
    domo.mostrar(4, 850, 70, 0.5);


    fill(0, 0, 255);
    if (numJA==1) {

      text(aro.nombre, 90, 250);
    }
    if (numJA==2) {

      text(pacman.nombre, 220, 250);
    }
    if (numJA==3) {

      text(fuerte.nombre, 300, 250);
    }
    if (numJA==4) {
      text(mago.nombre, 410, 250);
    }
    if (numJA==5) {
      text(domo.nombre, 535, 250);
    }

    fill(255, 0, 0);

    if (numJB==1) {

      text(aro.nombre, 90, 300);
    }
    if (numJB==2) {

      text(pacman.nombre, 220, 300);
    }
    if (numJB==3) {

      text(fuerte.nombre, 300, 300);
    }
    if (numJB==4) {
      text(mago.nombre, 410, 300);
    }
    if (numJB==5) {
      text(domo.nombre, 535, 300);
    }



    fill(255);
    textSize(8);
    text("JUGADOR 1", 20, 250);

    fill(255);
    textSize(8);
    text("JUGADOR 2", 20, 300);
  }

  if (pantalla == 2) {
    pCombate.pCombate();

    jugador1.vida();
    jugador2.vida();
    corazon(.5, 80, 25 );
    corazon(.5, 620, 25 );

    jugador1.mostrar(numJA-1, jug1x, jug1y, 1);
    jugador2.mostrar(numJB-1, jug2x, jug2y, 1);


    fill(#FCE90D);
    rect(300, 0, 100, 30, 0, 0, 10, 10);
    fill(255, 0, 0);
    textSize(20);
    text("VS", 330, 25);


    nombres();
    if (jugador1.vida>0 && jugador2.vida>0) {

      if (turno==1) {
        fill(255);
        text("Tu turno", 125, 100);
      }
      if (turno==2) {

        fill(255);
        text("Tu turno", 485, 100);
      }


      if (key=='b' || key=='B') {

        if (turno==1) { 
          jugador1.golpe1(dano2, dano3);
        }
        if (turno==2) {
          jugador2.golpe1(dano2, dano3);
        }
      }
      if (key=='n'|| key=='N') {
        if (turno==1) { 
          jugador1.golpePoder(dano1);
        }
        if (turno==2) { 
          jugador2.golpePoder(dano1);
        }
      }
      if (key=='v'||key=='v') {
        if (turno==1) {
          jugador1.vidaE(po);
        }
        if (turno==2) {
          jugador2.vidaE(po);
        }
      }
    }

    if (jugador1.vida<=0) {
      jugador1.vida=0;
      pantalla=3;
    }
    if (jugador2.vida<=0) {
      jugador2.vida=0;
      pantalla=3;
    }
  }
  if (pantalla==3) {
    pFinal.pFinal();
    if (jugador1.vida<=0) {

      jugador2.mostrar(numJB-1, jug2x, jug2y, 1);

      fill(255, 255, 0);
      rect(100, 250, 200, 100, 10, 10, 10, 10);
      textSize(15); 
      fill(0);
      text(" GANADOR: \n JUGADOR 2 ", 105, 280);
      fill(255);
      textSize(20);
      text("Presiona la tecla 'ENTER' para reiniciar", 50, 470);
    }
    if (jugador2.vida<=0) {

      jugador1.mostrar(numJA-1, jug1x, jug1y, 1);
      fill(255, 255, 0);
      rect(400, 250, 200, 100, 10, 10, 10, 10);
      textSize(15); 
      fill(0);
      text(" GANADOR: \n JUGADOR 1 ", 405, 280);
      textSize(20);
      fill(255);
      text("Presiona la tecla 'ENTER' para reiniciar", 50, 470);
    }
  }
}
