class PlayerControl {
  Snake s;
  PlayerControl(Snake s) {  
    this.s = s;
  }
  
  void keyPressed() {
    if (keyCode == UP) {
      s.direction(0, -1);
    } 
    else if (keyCode == DOWN) {
      s.direction(0, 1);
    } 
    else if (keyCode == RIGHT) {
      s.direction(1, 0);
    } 
    else if (keyCode == LEFT) {
      s.direction(-1, 0);
    }
  }
}