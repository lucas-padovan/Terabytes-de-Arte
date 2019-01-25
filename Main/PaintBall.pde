class PaintBall {
  PVector location;
  PVector velocity;
  PVector acceleration;
  int colorr;
  int colorg;
  int colorb;
  
  float rad;
  
  
  
  PaintBall(float lx, float ly, float lz, int c1, int c2, int c3) {
    location = new PVector(lx, ly, lz);
    velocity = new PVector(random(-1, 1), 0, 10);
    acceleration = new PVector(0, 0, -7);
   // gravity = new PVector();
    rad = 14;
    colorr = c1;
    colorg = c2;
    colorb = c3;
  }
  
  
  
  void move() {
    acceleration.add(new PVector(0, 0, 0));
    velocity.add(acceleration);
    location.add(velocity);
   
  }
  
  void crash(Board board) {
    if(((location.z <= -200) && (location.z >= -290.5)) && ((location.x >= 350) && (location.x <= 350 + quadro.x)) && ((location.y >= 150) && (location.y <= board.y + 150))) {
      println("bola bateu");
      println("x: " + location.x, "y: " + location.y);
      board.paint(this);
    }
  }
  
  void display() {
    //fill(colorr, colorg, colorg);
    //lights();
    pushMatrix();
    translate(location.x, location.y, location.z);
    noStroke();
    fill(colorr, colorg, colorb);
    sphere(rad);
    popMatrix();
    
  }
  
  
}