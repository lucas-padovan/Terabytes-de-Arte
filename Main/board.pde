class Board {
  int x;
  int y;
  int z;
  PGraphics board;
  

  Board() {
    board = createGraphics(500, 300, P3D);
    x = 500;
    y = 300;
    z = 150;
    board.beginDraw();
    board.background(255, 255, 255);
    board.endDraw();
  }
  
  void display() { 
    pushMatrix();
    translate(0, 0, -200);
    image(board, 350, 150);
    //image(board, 0, 0);
    popMatrix();
  }
  
  void paint(PaintBall ball) {
    float rad = ball.rad;
    float lx = ball.location.x;
    float ly = ball.location.y;
    
    pushMatrix();
    board.beginDraw();
    
    translate(0, 0, -200);
    board.fill(ball.colorr, ball.colorg, ball.colorb);
    println("lx: " + lx + "ly: " + ly);
    //board.stroke(150, ball.color1, 78);
    board.noStroke();
    board.ellipse(lx - 351.4, ly - 157, rad, random(rad-3, rad+6));
    board.endDraw();
    popMatrix();
  } 
}