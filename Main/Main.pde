ArrayList<PaintBall> b = new ArrayList<PaintBall>();
int[] colors = new int[3];
int corsobe = 2;
int corabaixa = -1;
Board quadro;

void setup() {
  size(1200, 620, P3D);
  quadro = new Board();
  background(128);
  quadro.display();
  colors[0] = 255;
  colors[1] = 0;
  colors[2] = 0;
}
void draw() {
    background(128);
    for(int i = 0; i < b.size(); i++) {
      PaintBall ball = b.get(i);
      ball.crash(quadro);
      ball.move();
      ball.display();
    }
    clearBalls(b);
    quadro.display();
    b.add(new PaintBall(mouseX, mouseY, 0, colors[0], colors[1], colors[2]));
    /*stroke(0);
    float x4 = 350; //+ quadro.x;
    float y4 = 150+quadro.y;
    float z4 = -200;
    pushMatrix();
    translate(0, 0, -200);
    ellipse(x4, y4, 3, 3);
    popMatrix();*?
    /*if(cg == 300) s = -1;
    else if(cg == 0) s = 1;
    cg += s;*/
    if(corsobe >= 0) {
    if(colors[corsobe] < 255) colors[corsobe] += 1;
    else {
      if(corsobe == 2) {
        corsobe = -1;
        corabaixa = 0;
      }
      if(corsobe == 1) {
        corsobe = -1;
        corabaixa = 2;
      }
      if(corsobe == 0) {
        corsobe = -1;
        corabaixa = 1;
      }
      
    }
  }
  else if(corabaixa >= 0) {
    if(colors[corabaixa] > 0) colors[corabaixa]--;
    else {
      if(corabaixa == 2) {
          corabaixa = -1;
          corsobe = 0;
        }
        if(corabaixa == 1) {
          corabaixa = -1;
          corsobe = 2;
        }
        if(corabaixa == 0) {
          corabaixa = -1;
          corsobe = 1;
        } 
        
    }
  }
}

/*void mouseClicked() {
  b.add(new PaintBall(mouseX, mouseY, 0, i));
  println(mouseX);
  println(mouseY);
}*/

void clearBalls(ArrayList<PaintBall> array) {
  for(int i = 0; i < array.size(); i++) {
      PaintBall littleBall = array.get(i);
      if(littleBall.location.z < - 1010) {
        array.remove(i);
      }
      else break;
  }
}